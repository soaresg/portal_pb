import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portal_pb/constants.dart';
import 'package:portal_pb/models/recent_file.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(
                  label: Text(
                    "File Name",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Size",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                fileInfo.icon,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.title),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.date)),
        DataCell(Text(fileInfo.size)),
      ],
    );
  }
}
