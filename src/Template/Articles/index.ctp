<!-- File: src/Template/Articles/index.ctp (delete links added) -->

<h1>Blog articles</h1>
<p><?= $this->Html->link('Add Article', ['action' => 'add']) ?></p>
<table>

<!-- Here's where we loop through our $articles query object, printing out article info -->

    <?php foreach ($articles as $article): ?>
    <tr>
        <td><?= $article->id ?></td>
        <td>
            <?= $this->Html->link($article->title, ['action' => 'view', $article->id]) ?>
        </td>
        <td class="create-time">
            <?= $article->created->format(DATE_RFC850) ?>
        </td>
        <td>
            <?= $this->Form->postLink(
                'Delete',
                ['action' => 'delete', $article->id],
                ['confirm' => 'Are you sure?'])
            ?>
            <?= $this->Html->link('Edit', ['action' => 'edit', $article->id]) ?>
        </td>
        <td>
            <img src="/files/Articles/photo/<?= $article->photo ?>" alt="Smiley face" height="42" width="42">
        </td>
    </tr>
    <?php endforeach; ?>

</table>


<script language="JavaScript">
    //set time ago
		$('.create-time').each(function() {
				 $(this).text((jQuery.timeago(new Date($(this).text()))));
		});
    
</script>