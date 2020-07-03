from DataFlow::PathNode source, DataFlow::PathNode sink, UnsafeDeserializationConfig conf

where conf.hasFlowPath(source, sink)

select sink.getNode().(UnsafeDeserializationSink).getMethodAccess(), source, sink,
    "Unsafe deserialization of $@.", source.getNode(), "user input"
