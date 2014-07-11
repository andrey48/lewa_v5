.class Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneContactsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;


# direct methods
.method public constructor <init>(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;Landroid/content/ContentResolver;)V
    .registers 3
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    .line 310
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 312
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 13
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_146

    .line 375
    :goto_3
    return-void

    .line 319
    :pswitch_4
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$300(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$ChoicePhoneNumbersContactsAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$ChoicePhoneNumbersContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 320
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$400(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 321
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$400(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 322
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$402(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 324
    :cond_24
    if-eqz p3, :cond_72

    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$500(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 325
    const-string v3, "ContactsPickerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$600(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Landroid/widget/SearchView;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 327
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$600(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Landroid/widget/SearchView;

    move-result-object v3

    iget-object v4, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    const v5, 0x7f0d05bf

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 330
    :cond_72
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_139

    .line 331
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$700(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$800(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 333
    const/4 v3, -0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    :goto_8e
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 337
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v1, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 338
    .local v1, "nameBuffer":Landroid/database/CharArrayBuffer;
    const/4 v3, 0x1

    invoke-interface {p3, v3, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 339
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    const/16 v4, 0x430

    if-lt v3, v4, :cond_f8

    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    const/16 v4, 0x44f

    if-gt v3, v4, :cond_f8

    .line 340
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    aget-char v5, v3, v4

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 355
    :cond_bb
    :goto_bb
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 356
    .local v2, "sortKeyBuffer":Landroid/database/CharArrayBuffer;
    const/4 v3, 0x4

    invoke-interface {p3, v3, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 357
    iget-object v3, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 358
    .local v0, "letter":C
    const/16 v3, 0x410

    if-lt v0, v3, :cond_d7

    const/16 v3, 0x42f

    if-le v0, v3, :cond_d9

    .line 359
    :cond_d7
    const/16 v0, 0x23

    .line 361
    :cond_d9
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$800(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$700(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 341
    .end local v0    # "letter":C
    .end local v2    # "sortKeyBuffer":Landroid/database/CharArrayBuffer;
    :cond_f8
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    const/16 v4, 0x410

    if-lt v3, v4, :cond_10a

    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    const/16 v4, 0x42f

    if-le v3, v4, :cond_bb

    :cond_10a
    const-string v3, "[\u4e00-\u9fa5]"

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 343
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput-char v5, v3, v4

    goto :goto_bb

    .line 364
    .end local v1    # "nameBuffer":Landroid/database/CharArrayBuffer;
    :cond_123
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$902(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;Z)Z

    .line 365
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$1000(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 368
    :cond_139
    iget-object v3, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;

    invoke-static {v3}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;->access$1000(Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragment;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 316
    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
