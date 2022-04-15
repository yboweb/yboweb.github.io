<?php 

echo    "<tr>
            <td><input type='checkbox' class='get-subj'></td>
            <td class='subj'>Math</td>
        </tr>
        <tr>
            <td><input type='checkbox' class='get-subj'></td>
            <td class='subj'>Science</td>
        </tr>
        <tr>
            <td><input type='checkbox' class='get-subj'></td>
            <td class='subj'>English</td>
        </tr>";

?>
<script>
     $(".get-subj").click(function() {
            if(!this.checked) {
                var $item = $(this).closest("tr")   // Finds the closest row <tr> 
                                    .find(".subj")     // Gets a descendent with class="nr"
                                    .text();         // Retrieves the text within <td>

                alert($item);      // Outputs the answer;
            }
        });
</script>