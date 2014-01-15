.class Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    .local p0, this:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;,"Lcom/lewa/PIM/contacts/list/ContactEntryListFragment.3;"
    iput-object p1, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .local p0, this:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;,"Lcom/lewa/PIM/contacts/list/ContactEntryListFragment.3;"
    const/16 v12, 0x80

    const/16 v11, 0x042f

    const/16 v10, 0x0410

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$000(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 438
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$100(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 440
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_9d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_9d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_9d

    .line 441
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 444
    const/4 v5, 0x0

    .line 445
    .local v5, starredCnt:I
    const/4 v0, 0x0

    .line 446
    .local v0, count:I
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    instance-of v6, v6, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    if-eqz v6, :cond_4b

    .line 447
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;->getStarredCount()I

    move-result v5

    .line 451
    :cond_4b
    new-instance v3, Landroid/database/CharArrayBuffer;

    invoke-direct {v3, v12}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 452
    .local v3, nameBuffer:Landroid/database/CharArrayBuffer;
    new-instance v4, Landroid/database/CharArrayBuffer;

    invoke-direct {v4, v12}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 454
    .local v4, sortKeyBuffer:Landroid/database/CharArrayBuffer;
    if-ge v0, v5, :cond_a3

    const/16 v6, 0xc

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v9, :cond_a3

    .line 455
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v7, 0x2605

    aput-char v7, v6, v8

    .line 456
    const/16 v2, 0x2605

    .line 457
    .local v2, letter:C
    add-int/lit8 v0, v0, 0x1

    .line 483
    :cond_69
    :goto_69
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$100(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$000(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v3, Landroid/database/CharArrayBuffer;->data:[C

    invoke-static {v7, v8, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 486
    const/4 v1, 0x0

    .line 487
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    if-eqz v6, :cond_9d

    .line 488
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$200(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;)Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lewa/PIM/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 491
    .end local v0           #count:I
    .end local v2           #letter:C
    .end local v3           #nameBuffer:Landroid/database/CharArrayBuffer;
    .end local v4           #sortKeyBuffer:Landroid/database/CharArrayBuffer;
    .end local v5           #starredCnt:I
    :cond_9d
    iget-object v6, p0, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;

    invoke-static {v6, v9}, Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;->access$302(Lcom/lewa/PIM/contacts/list/ContactEntryListFragment;Z)Z

    .line 492
    return-void

    .line 460
    .restart local v0       #count:I
    .restart local v3       #nameBuffer:Landroid/database/CharArrayBuffer;
    .restart local v4       #sortKeyBuffer:Landroid/database/CharArrayBuffer;
    .restart local v5       #starredCnt:I
    :cond_a3
    invoke-interface {v1, v9, v3}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 461
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    const/16 v7, 0x0430

    if-lt v6, v7, :cond_d3

    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    const/16 v7, 0x044f

    if-gt v6, v7, :cond_d3

    .line 462
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v7, v6, v8

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    aput-char v7, v6, v8

    .line 477
    :cond_bf
    :goto_bf
    const/16 v6, 0xa

    invoke-interface {v1, v6, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 478
    iget-object v6, v4, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 479
    .restart local v2       #letter:C
    if-lt v2, v10, :cond_d0

    if-le v2, v11, :cond_69

    .line 480
    :cond_d0
    const/16 v2, 0x23

    goto :goto_69

    .line 463
    .end local v2           #letter:C
    :cond_d3
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    if-lt v6, v10, :cond_df

    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v6, v6, v8

    if-le v6, v11, :cond_bf

    :cond_df
    const-string v6, "[\u4e00-\u9fa5]"

    iget-object v7, v3, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bf

    .line 465
    iget-object v6, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v7, 0x23

    aput-char v7, v6, v8

    goto :goto_bf
.end method
