<!-- File: src/Template/Articles/add.ctp -->

<h1>Add Article</h1>
<?php
    echo $this->Form->create($article, ['enctype' => 'multipart/form-data']);
    echo $this->Form->control('title');
    echo $this->Form->control('body', ['rows' => '3']);
    echo $this->Form->input('photo', ['type' => 'file', 'multiple' => 'true']);
    echo $this->Form->button(__('Save Article'));
    echo $this->Form->end();
?>
<img id="myImg" src="#" />
<script language="JavaScript">
    //set time ago
		$('.create-time').each(function() {
				 $(this).text((jQuery.timeago(new Date($(this).text()))));
		});
    

$(function () {
    $("#photo").change(function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
        }
    });
});

function imageIsLoaded(e) {
    $('#myImg').attr('src', e.target.result);
};
  
  
</script>