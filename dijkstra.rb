def dijkstra(graph, start, finish)
    
    # Create a matrix to represent the graph
    # Use a hash with the key as the node and the value as a nested array with the cost
    matrix = {}
    # Create node arr for populating the matrix hash
    node_arr = []
    graph.each do |key|
        node_arr.push(key[0])        
    end
    # Loop through the matrix hash and populate it
    graph.each do |node, paths|
        matrix[node] = [''] * graph.length
        i = 0
        while i < node_arr.length
            current_key = node_arr[i]
            if paths.has_key?(current_key)
                matrix[node][i] = paths[current_key]
            else
                matrix[node][i] = 0
            end
            i += 1
        end
    end
    return matrix
  
end

# Should return {distance: 11, path: ['A', 'B', 'D', 'E', 'F']}
p dijkstra({'A'=> { 'B'=> 2, 'C'=> 7 }, 'B'=> { 'D'=> 1, 'E'=> 8 }, 'C'=> { 'B'=> 3, 'E'=> 12 }, 'D'=> { 'E'=> 4, 'F'=> 9 }, 'E'=> { 'F'=> 4 }, 'F'=> {} }, "A", "F")
