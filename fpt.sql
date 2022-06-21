use fptsql;

-- câu 3
select * from dongxe where songuoingoi > 5;
-- câu 4
select * from nhacungcap  join dongxe on nhacungcap.dongxecc = dongxe.dongxe
where dongxe.hangxe = 'toyota';
-- câu 5
select * from nhacungcap order by tennhacc ASC;
select * from nhacungcap order by masothue desc;
-- câu 6
select  nhacungcap.manhacc , nhacungcap.tennhacc, count(maDKCC) as 'số lần đăng ký cung cấp'
From dangkycungcap  join nhacungcap  on dangkycungcap.manhacc = nhacungcap.manhacc
where dangkycungcap.BdCCdate > '2019-12-15'
group by nhacungcap.manhacc;
-- câu 8
select dangkycungcap.MaDKCC, dangkycungcap.MaNhaCC, nhacungcap.TenNhaCC, nhacungcap.DiaChi, nhacungcap.MaSoThue, loaidichvu.TenLoaiDV, mucphi.DonGia, dongxe.HangXe, dangkycungcap.bdccdate, dangkycungcap.ktccdate,count(maDKCC)
from dangkycungcap  join Nhacungcap  on dangkycungcap.manhacc = nhacungcap.manhacc and dangkycungcap.dongxe = nhacungcap.dongxecc join dongxe  on dangkycungcap.dongxe = dongxe.dongxe join loaidichvu  on dangkycungcap.maloaidv = loaidichvu.maloaiDV join mucphi  on dangkycungcap.mamucphi = mucphi.mamucphi
group by nhacungcap.manhacc;


