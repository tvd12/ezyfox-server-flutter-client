package com.tvd12.ezyfoxerver.client.proxy;

import com.tvd12.ezyfoxerver.client.EzyMethodNames;
import com.tvd12.ezyfoxserver.client.EzyClient;
import com.tvd12.ezyfoxserver.client.logger.EzyLogger;

import java.util.Map;

/**
 * Created by tavandung12 on 10/25/18.
 */

public class EzySetSessionKeyMethod extends EzyMethodProxy {
    @Override
    public Object invoke(Map params) throws Exception {
        EzyClient client = getClient(params);
        byte[] sessionKey = (byte[])params.get("sessionKey");
        client.setSessionKey(sessionKey);
        return Boolean.TRUE;
    }

    @Override
    public String getName() {
        return EzyMethodNames.METHOD_SET_SESSION_KEY;
    }
}
