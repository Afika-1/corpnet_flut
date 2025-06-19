// appBar: AppBar(
//         backgroundColor: const Color(0xFF1F2937),
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             // CorpNet Title
//             RichText(
//               text: TextSpan(
//                 style: theme.textTheme.titleLarge?.copyWith(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 24,
//                   fontFamily: 'Inter',
//                 ) ??
//                     const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                       fontSize: 24,
//                       fontFamily: 'Inter',
//                     ),
//                 children: [
//                   const TextSpan(
//                     text: 'Corp',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   TextSpan(
//                     text: 'Net',
//                     style: TextStyle(color: maroon),
//                   ),
//                 ],
//               ),
//             ),
            
//             const Spacer(),
            
//             // Search functionality
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               width: _isSearchExpanded ? MediaQuery.of(context).size.width * 0.4 : 40,
//               height: 40,
//               child: _isSearchExpanded
//                   ? Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF374151),
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: TextField(
//                         controller: _searchController,
//                         autofocus: true,
//                         decoration: const InputDecoration(
//                           hintText: 'Search CorpNet',
//                           hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                         ),
//                         style: const TextStyle(color: Colors.white, fontSize: 14),
//                       ),
//                     )
//                   : IconButton(
//                       icon: const Icon(Icons.search, color: Colors.white, size: 24),
//                       onPressed: () {
//                         setState(() {
//                           _isSearchExpanded = true;
//                         });
//                       },
//                     ),
//             ),
            
//             if (_isSearchExpanded)
//               IconButton(
//                 icon: const Icon(Icons.close, color: Colors.white, size: 20),
//                 onPressed: () {
//                   setState(() {
//                     _isSearchExpanded = false;
//                     _searchController.clear();
//                   });
//                 },
//               ),
            
//             // Notification Icon
//             const CircleAvatar(
//             radius: 16,
//             backgroundColor: Color(0xFFE53E3E),
//             child: Icon(Icons.person, color: Colors.white, size: 20),
//           ),
//           ],
//         ),
//       ),