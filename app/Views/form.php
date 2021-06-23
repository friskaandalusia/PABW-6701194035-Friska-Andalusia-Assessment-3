<h1>INPUTKAN DATA CUSTOMER</h1>
<div class="container">
	<form method="post" action="<?= base_url('home/form')?>">
		<div class="form-group">
			<label for="exampleInputEmail1">NO.KTP</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Input No.KTP Anda">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Nama Customer</label>
			<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Isi nama lengkapmu ya!">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">NO. HP</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Isi nomor HP kamu ya!">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Alamat</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Isi alamat lengkap kamu ya!">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Jenis Kelamin</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Jenis Kelamin">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Tanggal lahir</label>
			<input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tanggal lahir kamu ya!">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Username</label>
			<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Inputkan username-mu">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Password</label>
			<input type="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Jangan lupa isi password!">
		</div>

		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
