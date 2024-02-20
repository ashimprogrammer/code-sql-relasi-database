--Tabel Pelangggan

INSERT INTO Pelanggan (pelanggan_id, nama_pelanggan, alamat, email, no_telepon) VALUES
('P0001', 'John Doe', 'Jl. Raya No. 123', 'john.doe@example.com', '08123456789'),
('P0002', 'Jane Smith', 'Jl. Mawar No. 45', 'jane.smith@example.com', '08765432101'),
('P0003', 'Michael Johnson', 'Jl. Merdeka No. 78', 'michael.johnson@example.com', '08111222333'),
('P0004', 'Emily Davis', 'Jl. Anggrek No. 56', 'emily.davis@example.com', '08987654321'),
('P0005', 'Robert Williams', 'Jl. Cendana No. 89', 'robert.williams@example.com', '08234567890'),
('P0006', 'Sara Miller', 'Jl. Teratai No. 12', 'sara.miller@example.com', '08543210987'),
('P0007', 'Daniel Brown', 'Jl. Kenanga No. 34', 'daniel.brown@example.com', '08876543210'),
('P0008', 'Olivia Wilson', 'Jl. Dahlia No. 67', 'olivia.wilson@example.com', '08321098765'),
('P0009', 'William Taylor', 'Jl. Sakura No. 90', 'william.taylor@example.com', '08654321098'),
('P0010', 'Sophia Anderson', 'Jl. Melati No. 23', 'sophia.anderson@example.com', '08432109876');


-- Tabel Transaksi Pembelian barang
CREATE TABLE TransaksiPembelian (
    transaksi_pembelian_id VARCHAR(5),
    karyawan_id VARCHAR(5),
    tanggal_pembelian DATE,
    barang_id VARCHAR(5),
    nama_barang VARCHAR(255),
    harga_barang_satuan INT,
    jumlah_barang INT,
    total_biaya INT,
    supplier VARCHAR(255)
);

INSERT INTO TransaksiPembelian VALUES
('M0001', 'K0003', '2024-01-05', 'B0001', 'Laptop', 10000000, 2, 20000000, 'Supplier A'),
('M0002', 'K0006', '2024-01-10', 'B0002', 'Printer', 2500000, 3, 7500000, 'Supplier B'),
('M0003', 'K0008', '2024-01-15', 'B0003', 'Mouse', 20000, 5, 100000, 'Supplier C'),
('M0004', 'K0010', '2024-01-20', 'B0004', 'Keyboard', 800000, 2, 1600000, 'Supplier D'),
('M0005', 'K0003', '2024-01-25', 'B0005', 'Monitor', 4000000, 1, 4000000, 'Supplier E'),
('M0006', 'K0006', '2024-01-30', 'B0006', 'Hard Drive', 700000, 4, 2800000, 'Supplier F'),
('M0007', 'K0010', '2024-02-05', 'B0007', 'Webcam', 1000000, 3, 3000000, 'Supplier G'),
('M0008', 'K0008', '2024-02-10', 'B0008', 'Scanner', 1500000, 1, 1500000, 'Supplier H'),
('M0009', 'K0003', '2024-02-15', 'B0009', 'Printer Paper', 40000, 10, 400000, 'Supplier I'),
('M0010', 'K0010', '2024-02-20', 'B0010', 'External HDD', 1000000, 2, 2000000, 'Supplier J');



-- Tabel Karyawan
CREATE TABLE Karyawan (
    karyawan_id VARCHAR(5),
    nama_karyawan VARCHAR(255),
    jabatan VARCHAR(50),
    gaji INT,
    tanggal_masuk DATE
);

INSERT INTO Karyawan (karyawan_id, nama_karyawan, jabatan, gaji, tanggal_masuk) VALUES
('K0001', 'Alice Johnson', 'Manajer', 2500000, '2023-01-15'),
('K0002', 'Bob Williams', 'Kasir', 1500000, '2023-02-10'),
('K0003', 'Eva Davis', 'Gudang', 1800000, '2023-03-20'),
('K0004', 'Michael Brown', 'Kasir', 1600000, '2023-04-05'),
('K0005', 'Jessica Wilson', 'Manajer', 2600000, '2023-05-12'),
('K0006', 'Daniel Smith', 'Gudang', 1700000, '2023-06-18'),
('K0007', 'Sophia Taylor', 'Kasir', 1550000, '2023-07-25'),
('K0008', 'James Anderson', 'Gudang', 1850000, '2023-08-30'),
('K0009', 'Emma Miller', 'Manajer', 2550000, '2023-09-05'),
('K0010', 'Matthew Davis', 'Gudang', 1750000, '2023-10-10');


-- Tabel Transaksi Penjualan barang
CREATE TABLE TransaksiPenjualan (
    transaksi_penjualan_id VARCHAR(10),
    pelanggan_id VARCHAR(5),
    karyawan_id VARCHAR(5),
    tanggal_penjualan DATE,
    barang_id VARCHAR(5),
    nama_barang VARCHAR(255),
    harga_barang_satuan INT,
    jumlah_barang INT,
    total_harga_barang INT,
    metode_pembayaran VARCHAR(50)
);

INSERT INTO TransaksiPenjualan VALUES
('T0001', 'P0001', 'K0004', '2024-03-01', 'B0001', 'Laptop', 12000000, 2, 24000000, 'Cash'),
('T0002', 'P0002', 'K0002', '2024-03-05', 'B0002', 'Printer', 3000000, 3, 9000000, 'Credit Card'),
('T0003', 'P0003', 'K0007', '2024-03-10', 'B0003', 'Mouse', 25000, 5, 125000, 'Cash'),
('T0004', 'P0004', 'K0004', '2024-03-15', 'B0004', 'Keyboard', 1000000, 2, 2000000, 'Cash'),
('T0005', 'P0005', 'K0007', '2024-03-20', 'B0005', 'Monitor', 5000000, 1, 5000000, 'Credit Card'),
('T0006', 'P0006', 'K0002', '2024-03-25', 'B0006', 'Hard Drive', 800000, 4, 3200000, 'Cash'),
('T0007', 'P0007', 'K0007', '2024-03-30', 'B0007', 'Webcam', 1500000, 3, 4500000, 'Credit Card'),
('T0008', 'P0008', 'K0002', '2024-04-05', 'B0008', 'Scanner', 2000000, 2, 4000000, 'Cash'),
('T0009', 'P0009', 'K0004', '2024-04-10', 'B0009', 'Printer Paper', 50000, 10, 500000, 'Cash'),
('T0010', 'P0010', 'K0007', '2024-04-15', 'B0010', 'External HDD', 1500000, 2, 3000000, 'Credit Card');


-- Tabel Barang
CREATE TABLE Barang (
    barang_id VARCHAR(5),
    nama_barang VARCHAR(255),
    harga INT,
    stok INT,
    kategori VARCHAR(50)
);

INSERT INTO Barang VALUES
('B0001', 'Laptop', 12000000, 10, 'Elektronik'),
('B0002', 'Printer', 3000000, 15, 'Elektronik'),
('B0003', 'Mouse', 25000, 50, 'Aksesoris Komputer'),
('B0004', 'Keyboard', 1000000, 20, 'Aksesoris Komputer'),
('B0005', 'Monitor', 5000000, 5, 'Elektronik'),
('B0006', 'Hard Drive', 800000, 30, 'Elektronik'),
('B0007', 'Webcam', 1500000, 25, 'Aksesoris Komputer'),
('B0008', 'Scanner', 2000000, 12, 'Elektronik'),
('B0009', 'Printer Paper', 50000, 100, 'Kertas'),
('B0010', 'External HDD', 1500000, 8, 'Elektronik');

SELECT * FROM Barang
SELECT * FROM TransaksiPenjualan


SELECT * FROM TransaksiPembelian
BEGIN TRANSACTION
COMMIT




--Stored Procedure
ALTER PROCEDURE PenjualanBarang
    @pelanggan_id VARCHAR(5),
    @karyawan_id VARCHAR(5),
    @barang_id VARCHAR(5),
    @jumlah_barang INT,
    @metode_pembayaran VARCHAR(50)
AS
BEGIN
    DECLARE @transaksi_penjualan_id VARCHAR(5);
    DECLARE @nama_barang VARCHAR(255);
    DECLARE @harga_barang_satuan INT;
	DECLARE @tanggal_penjualan as DATE;
	DECLARE @KdTemp int;

	SET @tanggal_penjualan = (SELECT CONVERT(DATE,GETDATE()))

    -- Ambil nilai terakhir dari kolom transaksi_penjualan_id
	SET @KdTemp =
	(SELECT CAST(right(max(transaksi_penjualan_id),4) as int)+1
	FROM TransaksiPenjualan)
	SET @transaksi_penjualan_id = 
	CONCAT('T001',@KdTemp)

    -- Ambil nama_barang dan harga_barang_satuan dari tabel Barang
    SELECT @nama_barang = nama_barang, @harga_barang_satuan = harga
    FROM Barang
    WHERE barang_id = @barang_id;

    DECLARE @total_harga_barang INT;
    SET @total_harga_barang = @harga_barang_satuan * @jumlah_barang;

    -- Validasi apakah stok mencukupi
    IF (SELECT stok FROM Barang WHERE barang_id = @barang_id) >= @jumlah_barang
    BEGIN
        -- Kurangi stok barang
        UPDATE Barang
        SET stok = stok - @jumlah_barang
        WHERE barang_id = @barang_id;

        -- Lakukan catatan transaksi penjualan
        INSERT INTO TransaksiPenjualan
        VALUES (
			@transaksi_penjualan_id,       
			@pelanggan_id,
            @karyawan_id,
            @tanggal_penjualan,
            @barang_id,
            @nama_barang,
            @harga_barang_satuan,
            @jumlah_barang,
            @total_harga_barang,
            @metode_pembayaran
        );

        SELECT 'Penjualan berhasil' AS Status;
    END
    ELSE
    BEGIN
        SELECT 'Stok barang tidak mencukupi' AS Status;
    END
END;



SELECT * FROM Barang

10
15
50
20
5
30
25
12
100
8

-- Eksekusi stored procedure
EXEC PenjualanBarang 
    @pelanggan_id = 'P0001',
    @karyawan_id = 'K0004',
    @barang_id = 'B0001',
    @jumlah_barang = 2,
    @metode_pembayaran = 'Cash';

-- Lihat hasil eksekusi
SELECT * FROM TransaksiPenjualan WHERE transaksi_penjualan_id = (SELECT MAX(transaksi_penjualan_id) FROM TransaksiPenjualan);


Begin Transaction
Rollback
Commit

SELECT * FROM TransaksiPenjualan




ALTER PROCEDURE PembelianBarang
    @karyawan_id VARCHAR(5),
    @barang_id VARCHAR(5),
    @jumlah_barang INT,
    @supplier VARCHAR(255)
AS
BEGIN
    DECLARE @transaksi_pembelian_id VARCHAR(10);
    DECLARE @nama_barang VARCHAR(255);
    DECLARE @harga_barang_satuan INT;
	DECLARE @tanggal_pembelian as DATE;
	DECLARE @KdTempb int;

	SET @tanggal_pembelian = (SELECT CONVERT(DATE,GETDATE()))

    -- Ambil nilai terakhir dari kolom transaksi_pembelian_id
    SET @KdTempb =
	(SELECT CAST(right(max(transaksi_pembelian_id),4) as int)+1
	FROM TransaksiPembelian)
	SET @transaksi_pembelian_id = 
	CONCAT('M001',@KdTempb)

    -- Ambil nama_barang dan harga_barang_satuan dari tabel TransaksiPembelian
    SELECT @nama_barang = nama_barang, @harga_barang_satuan = harga_barang_satuan
    FROM TransaksiPembelian
    WHERE barang_id = @barang_id

    -- Lakukan catatan transaksi pembelian
    INSERT INTO TransaksiPembelian 
    VALUES (
		@transaksi_pembelian_id,
        @karyawan_id,
        @tanggal_pembelian,
        @barang_id,
        @nama_barang,
        @harga_barang_satuan,
        @jumlah_barang,
        @harga_barang_satuan * @jumlah_barang,
        @supplier
    );

    -- Tambahkan stok barang
    UPDATE Barang
    SET stok = stok + @jumlah_barang
    WHERE barang_id = @barang_id;

    SELECT 'Pembelian berhasil' AS Status;
END;

EXEC PembelianBarang 
    @karyawan_id = 'K0003',
    @barang_id = 'B0001',
    @jumlah_barang = 2,
    @supplier = 'Supplier A';


Begin Transaction
Rollback
Commit

SELECT * FROM TransaksiPembelian
SELECT * FROM Barang

