package com.goopai.carrec.filter;

import java.io.IOException;
import java.util.zip.GZIPInputStream;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GzipRequestWrapper extends HttpServletRequestWrapper {

	public static final Logger LOGGER = LoggerFactory.getLogger(GzipRequestWrapper.class);
	private HttpServletRequest request;

	public GzipRequestWrapper(HttpServletRequest request) {
		super(request);
		this.request = request;
	}

	@Override
	public ServletInputStream getInputStream() throws IOException {
		ServletInputStream stream = request.getInputStream();
		String contentEncoding = request.getHeader("Content-Encoding");
		// ��������ݽ�����ѹ�������ѹ
		if (null != contentEncoding && contentEncoding.indexOf("gzip") != -1) {
			try {
				final GZIPInputStream gzipInputStream = new GZIPInputStream(stream);

				ServletInputStream newStream = new ServletInputStream() {

					@Override
					public int read() throws IOException {
						return gzipInputStream.read();
					}
				};
				return newStream;
			} catch (Exception e) {
				LOGGER.debug("ungzip content fail.", e);
			}
		}
		return stream;
	}
}
