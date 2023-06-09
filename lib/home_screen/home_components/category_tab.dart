import 'package:fashionhub/constants.dart';
import 'package:fashionhub/providers/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    var myCategory = Provider.of<Category>(context);
    bool selectHome = myCategory.homeSelected;
    bool selectApartment = myCategory.apartmentSelected;
    bool selectHotel = myCategory.hotelSelected;
    bool selectVilla = myCategory.villaSelected;
    bool selectEstate = myCategory.estateSelected;

    return Container(
        margin: const EdgeInsets.only(top: 10),
        height: 70,
        width: MediaQuery.of(context).size.width,
        // color: Colors.amber,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(width: 15,),
            Center(
              child: GestureDetector(
                onTap: () => context.read<Category>().selectHome(),
                child: Material(
                  elevation: selectHome ? 3 : 0,
                  shadowColor: selectHome ? Colors.grey : null,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 85,
                    height: 45,
                    decoration: BoxDecoration(
                        gradient: selectHome ? myGradient : null,
                        color: selectHome ? null : lightGrey,
                        borderRadius: BorderRadius.circular(12),
                        ),
                    child: Center(
                      child: Text(
                        'House',
                        style: TextStyle(
                          color: selectHome ? Colors.white : Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15,),
            GestureDetector(
              onTap: () => context.read<Category>().selectApartment(),
              child: Center(
                child: Material(
                  elevation: selectApartment ? 3 : 0,
                  shadowColor: selectApartment ? Colors.grey : null,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 85,
                    height: 45,
                    decoration: BoxDecoration(
                        gradient: selectApartment ? myGradient : null,
                        color: selectApartment ? null : lightGrey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Apartment',
                        style: TextStyle(
                          color: selectApartment ? Colors.white : Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15,),
            GestureDetector(
              onTap: () => context.read<Category>().selectHotel(),
              child: Center(
                child: Material(
                  elevation: selectHotel ? 3 : 0,
                  shadowColor: selectHotel ? Colors.grey : null,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 85,
                    height: 45,
                    decoration: BoxDecoration(
                        gradient: selectHotel ? myGradient : null,
                        color: selectHotel ? null : lightGrey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Hotel',
                        style: TextStyle(
                          color: selectHotel ? Colors.white : Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15,),
            GestureDetector(
              onTap: () => context.read<Category>().selectVilla(),
              child: Center(
                child: Material(
                  elevation: selectVilla ? 3 : 0,
                  shadowColor: selectVilla ? Colors.grey : null,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 85,
                    height: 45,
                    decoration: BoxDecoration(
                        gradient: selectVilla ? myGradient : null,
                        color: selectVilla ? null : lightGrey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Villa',
                        style: TextStyle(
                          color: selectVilla ? Colors.white : Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15,),
            GestureDetector(
              onTap: () => context.read<Category>().selectEstate(),
              child: Center(
                child: Material(
                  elevation: selectEstate ? 3 : 0,
                  shadowColor: selectEstate ? Colors.grey : null,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 85,
                    height: 45,
                    decoration: BoxDecoration(
                        gradient: selectEstate ? myGradient : null,
                        color: selectEstate ? null : lightGrey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Estate',
                        style: TextStyle(
                          color: selectEstate ? Colors.white : Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15,),
          ],
        ));
  }
}
