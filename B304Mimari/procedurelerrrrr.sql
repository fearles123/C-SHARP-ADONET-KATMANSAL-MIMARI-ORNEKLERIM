USE [KuzeyYeli]
GO
/****** Object:  StoredProcedure [dbo].[prc_KategoriEkle]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KategoriEkle]
@adi nvarchar(50),
@tanim nvarchar(150)
as
begin

insert into Kategoriler(KategoriAdi,Tanimi) values(@adi,@tanim)

end

GO
/****** Object:  StoredProcedure [dbo].[prc_KategoriGuncelle]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KategoriGuncelle]
@id int,
@adi nvarchar(50),
@tanim nvarchar(100)
as
begin

update Kategoriler set KategoriAdi=@adi,Tanimi=@tanim where KategoriID=@id

end

GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Delete]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategoriler_Delete]
@KategoriID int 

as
begin

delete Kategoriler where KategoriID=@KategoriID

end

GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Insert]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Kategoriler_Insert]
@KategoriID int,
@KategoriAdi nvarchar(50),
@Tanimi nvarchar(150),
@Resim Image
as
begin

insert into Kategoriler(KategoriAdi,Tanimi,Resim ) values(@KategoriAdi,@Tanimi,@Resim)

end

GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Select]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategoriler_Select]
as
begin

select*from Kategoriler



end
GO
/****** Object:  StoredProcedure [dbo].[prc_Kategoriler_Update]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Kategoriler_Update]
@KategoriID int,
@KategoriAdi nvarchar(50),
@Tanimi nvarchar(50),
@Resim Image
as
begin

update Kategoriler set KategoriAdi=@KategoriAdi,Tanimi=@Tanimi,Resim=@Resim where @KategoriID=@KategoriID

end
GO
/****** Object:  StoredProcedure [dbo].[prc_KategoriListele]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KategoriListele]
as
begin

select*from Kategoriler



end
GO
/****** Object:  StoredProcedure [dbo].[prc_KategoriSil]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_KategoriSil]
@kategoriId int
as
begin

delete from Kategoriler where KategoriID=@kategoriId
end

GO
/****** Object:  StoredProcedure [dbo].[prc_Tedarikciler_Select]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Tedarikciler_Select]
as
begin

select*from Tedarikciler

end
GO
/****** Object:  StoredProcedure [dbo].[prc_TedarikciListele]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_TedarikciListele]
as
begin

select*from Tedarikciler

end
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Delete]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[prc_Urunler_Delete]
@UrunID int
as
begin

delete Urunler where UrunID=@UrunID


end
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Insert]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Urunler_Insert]
@UrunID int,
@UrunAdi nvarchar(50),
@Fiyat money,
@Stok smallint,
@KategoriID int,
@TedarikciID int,
@BirimdekiMiktar nvarchar(50),
@YeniSatis smallint,
@EnAzYenidenSatisMikatari smallint,
@Sonlandi bit
as
begin
insert into Urunler(UrunAdi, TedarikciID, KategoriID, BirimdekiMiktar, Fiyat, Stok, YeniSatis, EnAzYenidenSatisMikatari, Sonlandi) values(@UrunAdi, @TedarikciID,@KategoriID, @BirimdekiMiktar,@Fiyat,@Stok, @YeniSatis, @EnAzYenidenSatisMikatari, @Sonlandi)
end


GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Select]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[prc_Urunler_Select] 
as
begin

select *from Urunler

end
GO
/****** Object:  StoredProcedure [dbo].[prc_Urunler_Update]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Urunler_Update]
@UrunID int,
@UrunAdi nvarchar(50),
@TedarikciID int,
@KategoriID int,
@Fiyat money,
@Stok smallint,
@YeniSatis smallint,
@BirimdekiMiktar nvarchar(20),
@EnAzYenidenSatisMikatari smallint,
@Sonlandi bit
as
begin

update Urunler set UrunAdi=@UrunAdi,TedarikciID=@TedarikciID,KategoriID=@KategoriID,Fiyat=@Fiyat,Stok=@Stok,YeniSatis=@YeniSatis,BirimdekiMiktar=@BirimdekiMiktar,EnAzYenidenSatisMikatari=@EnAzYenidenSatisMikatari where UrunID=@UrunID


end
GO
/****** Object:  StoredProcedure [dbo].[UrunEkle]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UrunEkle]
@urunAdi nvarchar(50),
@fiyat money,
@stok smallint,
@kId int,
@tId int
as
begin
declare @trimli nvarchar(50)=ltrim(rtrim(@urunAdi))--sağdan ve soldan boşluğu al
if(exists(select*from Urunler where UrunAdi=@trimli))--sorgu true ve ya false döndürür.
begin
print 'Bu ürün zaten eklidir'
end

else
begin
insert into Urunler(UrunAdi,Fiyat,Stok,KategoriID,TedarikciID) values(@trimli,@fiyat,@stok,@kId,@tId)
end

end
GO
/****** Object:  StoredProcedure [dbo].[UrunListele]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UrunListele] 
as
begin

select *from Urunler

end
GO
/****** Object:  StoredProcedure [dbo].[UrunSil]    Script Date: 24.9.2016 20:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UrunSil]
@urunId int
as
begin
delete from Urunler where UrunID=@urunId
end
GO
