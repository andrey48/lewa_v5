.class Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;
.super Ljava/lang/Object;
.source "MultiPhoneNumbersPickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;


# direct methods
.method constructor <init>(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)V
    .registers 2

    .prologue
    .line 403
    iput-object p1, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v10, 0x80

    const/16 v9, 0x42f

    const/16 v8, 0x410

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 407
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$900(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 408
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$1000(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 409
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$1100(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 410
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_a3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_a3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a3

    .line 411
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 414
    :cond_35
    new-instance v2, Landroid/database/CharArrayBuffer;

    invoke-direct {v2, v10}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 415
    .local v2, "nameBuffer":Landroid/database/CharArrayBuffer;
    new-instance v3, Landroid/database/CharArrayBuffer;

    invoke-direct {v3, v10}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 418
    .local v3, "sortKeyBuffer":Landroid/database/CharArrayBuffer;
    const/4 v4, 0x4

    invoke-interface {v0, v4, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 419
    iget-object v4, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v6

    const/16 v5, 0x430

    if-lt v4, v5, :cond_a9

    iget-object v4, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v6

    const/16 v5, 0x44f

    if-gt v4, v5, :cond_a9

    .line 420
    iget-object v4, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v5, v4, v6

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    aput-char v5, v4, v6

    .line 435
    :cond_5c
    :goto_5c
    const/16 v4, 0xb

    invoke-interface {v0, v4, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 436
    iget-object v4, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v6

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 437
    .local v1, "letter":C
    if-lt v1, v8, :cond_6d

    if-le v1, v9, :cond_6f

    .line 438
    :cond_6d
    const/16 v1, 0x23

    .line 440
    :cond_6f
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$1000(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$900(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v2, Landroid/database/CharArrayBuffer;->data:[C

    invoke-static {v5, v6, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_35

    .line 443
    const/4 v0, 0x0

    .line 444
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$1100(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;

    move-result-object v4

    if-eqz v4, :cond_a3

    .line 445
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$1100(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;)Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 448
    .end local v1    # "letter":C
    .end local v2    # "nameBuffer":Landroid/database/CharArrayBuffer;
    .end local v3    # "sortKeyBuffer":Landroid/database/CharArrayBuffer;
    :cond_a3
    iget-object v4, p0, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment$4;->this$0:Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-static {v4, v7}, Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;->access$1202(Lcom/lewa/PIM/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;Z)Z

    .line 449
    return-void

    .line 421
    .restart local v2    # "nameBuffer":Landroid/database/CharArrayBuffer;
    .restart local v3    # "sortKeyBuffer":Landroid/database/CharArrayBuffer;
    :cond_a9
    iget-object v4, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v6

    if-lt v4, v8, :cond_b5

    iget-object v4, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v6

    if-le v4, v9, :cond_5c

    :cond_b5
    const-string v4, "[\u4e00-\u9fa5]"

    iget-object v5, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 423
    iget-object v4, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v5, 0x23

    aput-char v5, v4, v6

    goto :goto_5c
.end method
