# envoy-hello
envoy container hello on port 8080

# Topology
```
                   xxxxxxxxxxxxxxxxxxxxxxxxx
                   x                       x
                   x       ***********     x
                   x       *         *     x
           HTTP-> 8080 -> 8080 envoy *     x
                   x       *         *     x
                   x       ***********     x
                   x Host                  x
                   xxxxxxxxxxxxxxxxxxxxxxxxx
```

# How to use this repo

Get docker [LINK](https://docs.docker.com/get-docker/)

Clone and cd into the repo
```
git clone https://github.com/ion-training/envoy-hello.git && cd envoy-hello
```

Build
```
docker build -t hello-envoy .
```

Start
```
docker container run -d hello-envoy
```

Build and start using docker-compose
```
docker-compose up &
```

# Sample code
```
$ docker-compose up &
[+] Building 0.6s (9/9) FINISHED                                                                                                                                                     
 => [internal] load build definition from Dockerfile                                                                                                                            0.0s
 => => transferring dockerfile: 345B                                                                                                                                            0.0s
 => [internal] load .dockerignore                                                                                                                                               0.0s
 => => transferring context: 2B                                                                                                                                                 0.0s
 => [internal] load metadata for docker.io/library/ubuntu:20.04                                                                                                                 0.5s
 => [1/5] FROM docker.io/library/ubuntu:20.04@sha256:626ffe58f6e7566e00254b638eb7e0f3b11d4da9675088f4781a50ae288f3322                                                           0.0s
 => CACHED [2/5] RUN apt-get update                                                                                                                                             0.0s
 => CACHED [3/5] RUN apt-get install -y curl                                                                                                                                    0.0s
 => CACHED [4/5] RUN curl -fsSL https://func-e.io/install.sh | bash -s -- -b /usr/local/bin                                                                                     0.0s
 => CACHED [5/5] RUN cp `func-e run --version | grep starting | awk '{print $2}'` /usr/local/bin                                                                                0.0s
 => exporting to image                                                                                                                                                          0.0s
 => => exporting layers                                                                                                                                                         0.0s
 => => writing image sha256:38c9da7b9f519f8b95789d27fe71ee97961861fe1e1f94aefc5fb08b505df19d                                                                                    0.0s
 => => naming to docker.io/library/envoy-hello_envoy                                                                                                                            0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/0
 ⠿ Network envoy-hello_default    Created                                                                                                                                       0.0s
 ⠿ Container envoy-hello-envoy-1  Created                                                                                                                                       0.0s
Attaching to envoy-hello-envoy-1
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:368] initializing epoch 0 (base id=0, hot restart version=11.104)
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:370] statically linked extensions:
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.thrift_proxy.protocols: auto, binary, binary/non-strict, compact, twitter
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.stats_sinks: envoy.dog_statsd, envoy.graphite_statsd, envoy.metrics_service, envoy.stat_sinks.dog_statsd, envoy.stat_sinks.graphite_statsd, envoy.stat_sinks.hystrix, envoy.stat_sinks.metrics_service, envoy.stat_sinks.statsd, envoy.stat_sinks.wasm, envoy.statsd
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.bootstrap: envoy.bootstrap.wasm, envoy.extensions.network.socket_interface.default_socket_interface
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.transport_sockets.downstream: envoy.transport_sockets.alts, envoy.transport_sockets.quic, envoy.transport_sockets.raw_buffer, envoy.transport_sockets.starttls, envoy.transport_sockets.tap, envoy.transport_sockets.tls, raw_buffer, starttls, tls
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.filters.http: envoy.bandwidth_limit, envoy.buffer, envoy.cors, envoy.csrf, envoy.ext_authz, envoy.ext_proc, envoy.fault, envoy.filters.http.adaptive_concurrency, envoy.filters.http.admission_control, envoy.filters.http.alternate_protocols_cache, envoy.filters.http.aws_lambda, envoy.filters.http.aws_request_signing, envoy.filters.http.bandwidth_limit, envoy.filters.http.buffer, envoy.filters.http.cache, envoy.filters.http.cdn_loop, envoy.filters.http.composite, envoy.filters.http.compressor, envoy.filters.http.cors, envoy.filters.http.csrf, envoy.filters.http.decompressor, envoy.filters.http.dynamic_forward_proxy, envoy.filters.http.dynamo, envoy.filters.http.ext_authz, envoy.filters.http.ext_proc, envoy.filters.http.fault, envoy.filters.http.grpc_http1_bridge, envoy.filters.http.grpc_http1_reverse_bridge, envoy.filters.http.grpc_json_transcoder, envoy.filters.http.grpc_stats, envoy.filters.http.grpc_web, envoy.filters.http.header_to_metadata, envoy.filters.http.health_check, envoy.filters.http.ip_tagging, envoy.filters.http.jwt_authn, envoy.filters.http.local_ratelimit, envoy.filters.http.lua, envoy.filters.http.oauth2, envoy.filters.http.on_demand, envoy.filters.http.original_src, envoy.filters.http.ratelimit, envoy.filters.http.rbac, envoy.filters.http.router, envoy.filters.http.set_metadata, envoy.filters.http.tap, envoy.filters.http.wasm, envoy.grpc_http1_bridge, envoy.grpc_json_transcoder, envoy.grpc_web, envoy.health_check, envoy.http_dynamo_filter, envoy.ip_tagging, envoy.local_rate_limit, envoy.lua, envoy.rate_limit, envoy.router, match-wrapper
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.compression.decompressor: envoy.compression.brotli.decompressor, envoy.compression.gzip.decompressor
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.dubbo_proxy.filters: envoy.filters.dubbo.router
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.wasm.runtime: envoy.wasm.runtime.null, envoy.wasm.runtime.v8
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.filters.network: envoy.client_ssl_auth, envoy.echo, envoy.ext_authz, envoy.filters.network.client_ssl_auth, envoy.filters.network.connection_limit, envoy.filters.network.direct_response, envoy.filters.network.dubbo_proxy, envoy.filters.network.echo, envoy.filters.network.ext_authz, envoy.filters.network.http_connection_manager, envoy.filters.network.local_ratelimit, envoy.filters.network.mongo_proxy, envoy.filters.network.ratelimit, envoy.filters.network.rbac, envoy.filters.network.redis_proxy, envoy.filters.network.sni_cluster, envoy.filters.network.sni_dynamic_forward_proxy, envoy.filters.network.tcp_proxy, envoy.filters.network.thrift_proxy, envoy.filters.network.wasm, envoy.filters.network.zookeeper_proxy, envoy.http_connection_manager, envoy.mongo_proxy, envoy.ratelimit, envoy.redis_proxy, envoy.tcp_proxy
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.resource_monitors: envoy.resource_monitors.fixed_heap, envoy.resource_monitors.injected_resource
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.filters.udp_listener: envoy.filters.udp.dns_filter, envoy.filters.udp_listener.udp_proxy
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.internal_redirect_predicates: envoy.internal_redirect_predicates.allow_listed_routes, envoy.internal_redirect_predicates.previous_routes, envoy.internal_redirect_predicates.safe_cross_scheme
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.rate_limit_descriptors: envoy.rate_limit_descriptors.expr
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.health_checkers: envoy.health_checkers.redis
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.http.original_ip_detection: envoy.http.original_ip_detection.custom_header, envoy.http.original_ip_detection.xff
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.compression.compressor: envoy.compression.brotli.compressor, envoy.compression.gzip.compressor
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.rbac.matchers: envoy.rbac.matchers.upstream.upstream_ip_port
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.upstream_options: envoy.extensions.upstreams.http.v3.HttpProtocolOptions, envoy.upstreams.http.http_protocol_options
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.formatter: envoy.formatter.metadata, envoy.formatter.req_without_query
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.dubbo_proxy.serializers: dubbo.hessian2
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.matching.common_inputs: envoy.matching.common_inputs.environment_variable
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.guarddog_actions: envoy.watchdog.abort_action, envoy.watchdog.profile_action
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.clusters: envoy.cluster.eds, envoy.cluster.logical_dns, envoy.cluster.original_dst, envoy.cluster.static, envoy.cluster.strict_dns, envoy.clusters.aggregate, envoy.clusters.dynamic_forward_proxy, envoy.clusters.redis
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.tls.cert_validator: envoy.tls.cert_validator.default, envoy.tls.cert_validator.spiffe
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.transport_sockets.upstream: envoy.transport_sockets.alts, envoy.transport_sockets.quic, envoy.transport_sockets.raw_buffer, envoy.transport_sockets.starttls, envoy.transport_sockets.tap, envoy.transport_sockets.tls, envoy.transport_sockets.upstream_proxy_protocol, raw_buffer, starttls, tls
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.retry_host_predicates: envoy.retry_host_predicates.omit_canary_hosts, envoy.retry_host_predicates.omit_host_metadata, envoy.retry_host_predicates.previous_hosts
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.matching.http.input: request-headers, request-trailers, response-headers, response-trailers
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.dubbo_proxy.protocols: dubbo
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.matching.action: composite-action, skip
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.retry_priorities: envoy.retry_priorities.previous_priorities
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.filters.listener: envoy.filters.listener.http_inspector, envoy.filters.listener.original_dst, envoy.filters.listener.original_src, envoy.filters.listener.proxy_protocol, envoy.filters.listener.tls_inspector, envoy.listener.http_inspector, envoy.listener.original_dst, envoy.listener.original_src, envoy.listener.proxy_protocol, envoy.listener.tls_inspector
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.quic.server.crypto_stream: envoy.quic.crypto_stream.server.quiche
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.access_loggers: envoy.access_loggers.file, envoy.access_loggers.http_grpc, envoy.access_loggers.open_telemetry, envoy.access_loggers.stderr, envoy.access_loggers.stdout, envoy.access_loggers.tcp_grpc, envoy.access_loggers.wasm, envoy.file_access_log, envoy.http_grpc_access_log, envoy.open_telemetry_access_log, envoy.stderr_access_log, envoy.stdout_access_log, envoy.tcp_grpc_access_log, envoy.wasm_access_log
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.thrift_proxy.transports: auto, framed, header, unframed
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.http.stateful_header_formatters: preserve_case
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.dubbo_proxy.route_matchers: default
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.matching.input_matchers: envoy.matching.matchers.consistent_hashing, envoy.matching.matchers.ip
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.resolvers: envoy.ip
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.thrift_proxy.filters: envoy.filters.thrift.rate_limit, envoy.filters.thrift.router
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.http.cache: envoy.extensions.http.cache.simple
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.upstreams: envoy.filters.connection_pools.tcp.generic
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.quic.proof_source: envoy.quic.proof_source.filter_chain
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.common.key_value: envoy.key_value.file_based
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.grpc_credentials: envoy.grpc_credentials.aws_iam, envoy.grpc_credentials.default, envoy.grpc_credentials.file_based_metadata
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.tracers: envoy.dynamic.ot, envoy.lightstep, envoy.tracers.datadog, envoy.tracers.dynamic_ot, envoy.tracers.lightstep, envoy.tracers.opencensus, envoy.tracers.skywalking, envoy.tracers.xray, envoy.tracers.zipkin, envoy.zipkin
envoy-hello-envoy-1  | [2021-11-24 02:53:48.671][1][info][main] [source/server/server.cc:372]   envoy.request_id: envoy.request_id.uuid
envoy-hello-envoy-1  | [2021-11-24 02:53:48.680][1][info][main] [source/server/server.cc:390] HTTP header map info:
envoy-hello-envoy-1  | [2021-11-24 02:53:48.682][1][info][main] [source/server/server.cc:393]   request header map: 640 bytes: :authority,:method,:path,:protocol,:scheme,accept,accept-encoding,access-control-request-method,authentication,authorization,cache-control,cdn-loop,connection,content-encoding,content-length,content-type,expect,grpc-accept-encoding,grpc-timeout,if-match,if-modified-since,if-none-match,if-range,if-unmodified-since,keep-alive,origin,pragma,proxy-connection,referer,te,transfer-encoding,upgrade,user-agent,via,x-client-trace-id,x-envoy-attempt-count,x-envoy-decorator-operation,x-envoy-downstream-service-cluster,x-envoy-downstream-service-node,x-envoy-expected-rq-timeout-ms,x-envoy-external-address,x-envoy-force-trace,x-envoy-hedge-on-per-try-timeout,x-envoy-internal,x-envoy-ip-tags,x-envoy-max-retries,x-envoy-original-path,x-envoy-original-url,x-envoy-retriable-header-names,x-envoy-retriable-status-codes,x-envoy-retry-grpc-on,x-envoy-retry-on,x-envoy-upstream-alt-stat-name,x-envoy-upstream-rq-per-try-timeout-ms,x-envoy-upstream-rq-timeout-alt-response,x-envoy-upstream-rq-timeout-ms,x-envoy-upstream-stream-duration-ms,x-forwarded-client-cert,x-forwarded-for,x-forwarded-proto,x-ot-span-context,x-request-id
envoy-hello-envoy-1  | [2021-11-24 02:53:48.682][1][info][main] [source/server/server.cc:393]   request trailer map: 136 bytes: 
envoy-hello-envoy-1  | [2021-11-24 02:53:48.682][1][info][main] [source/server/server.cc:393]   response header map: 432 bytes: :status,access-control-allow-credentials,access-control-allow-headers,access-control-allow-methods,access-control-allow-origin,access-control-expose-headers,access-control-max-age,age,cache-control,connection,content-encoding,content-length,content-type,date,etag,expires,grpc-message,grpc-status,keep-alive,last-modified,location,proxy-connection,server,transfer-encoding,upgrade,vary,via,x-envoy-attempt-count,x-envoy-decorator-operation,x-envoy-degraded,x-envoy-immediate-health-check-fail,x-envoy-ratelimited,x-envoy-upstream-canary,x-envoy-upstream-healthchecked-cluster,x-envoy-upstream-service-time,x-request-id
envoy-hello-envoy-1  | [2021-11-24 02:53:48.682][1][info][main] [source/server/server.cc:393]   response trailer map: 160 bytes: grpc-message,grpc-status
envoy-hello-envoy-1  | [2021-11-24 02:53:48.683][1][info][main] [source/server/server.cc:740] runtime: {}
envoy-hello-envoy-1  | [2021-11-24 02:53:48.683][1][warning][main] [source/server/server.cc:585] No admin address given, so no admin HTTP server started.
envoy-hello-envoy-1  | [2021-11-24 02:53:48.684][1][info][config] [source/server/configuration_impl.cc:127] loading tracing configuration
envoy-hello-envoy-1  | [2021-11-24 02:53:48.684][1][info][config] [source/server/configuration_impl.cc:87] loading 0 static secret(s)
envoy-hello-envoy-1  | [2021-11-24 02:53:48.684][1][info][config] [source/server/configuration_impl.cc:93] loading 0 cluster(s)
envoy-hello-envoy-1  | [2021-11-24 02:53:48.684][1][info][config] [source/server/configuration_impl.cc:97] loading 1 listener(s)
envoy-hello-envoy-1  | [2021-11-24 02:53:48.686][1][info][config] [source/server/configuration_impl.cc:109] loading stats configuration
envoy-hello-envoy-1  | [2021-11-24 02:53:48.686][1][info][runtime] [source/common/runtime/runtime_impl.cc:449] RTDS has finished initialization
envoy-hello-envoy-1  | [2021-11-24 02:53:48.686][1][info][upstream] [source/common/upstream/cluster_manager_impl.cc:206] cm init: all clusters initialized
envoy-hello-envoy-1  | [2021-11-24 02:53:48.686][1][warning][main] [source/server/server.cc:715] there is no configured limit to the number of allowed active connections. Set a limit via the runtime key overload.global_downstream_max_connections
envoy-hello-envoy-1  | [2021-11-24 02:53:48.686][1][info][main] [source/server/server.cc:817] all clusters initialized. initializing init manager
envoy-hello-envoy-1  | [2021-11-24 02:53:48.687][1][info][config] [source/server/listener_manager_impl.cc:779] all dependencies initialized. starting workers
envoy-hello-envoy-1  | [2021-11-24 02:53:48.688][1][info][main] [source/server/server.cc:836] starting main dispatch loop
```