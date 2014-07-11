.class public Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;
.super Landroid/widget/LinearLayout;
.source "ContactsPickerFragmentItem.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static sViewLeftMarg:I

.field private static sViewRightMarg:I


# instance fields
.field private mAvatarView:Landroid/widget/ImageView;

.field public mContactId:Ljava/lang/String;

.field private mContactPhotoHeight:I

.field private mContactsHead:Landroid/widget/TextView;

.field private mContactsLayout:Landroid/widget/LinearLayout;

.field protected mDisplayInSimpleMode:Z

.field private mDisplayName:Landroid/widget/TextView;

.field private mSelectCheckBox:Landroid/widget/CheckBox;

.field private mSeparator:Landroid/widget/LinearLayout;

.field protected mShowSmartAvatar:Z

.field private mWordNameTextColor:I

.field private mWordNameTextSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 29
    sput v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->sViewRightMarg:I

    .line 30
    sput v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->sViewLeftMarg:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayInSimpleMode:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mShowSmartAvatar:Z

    .line 40
    sget v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->sViewRightMarg:I

    if-ne v0, v2, :cond_1b

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->sViewRightMarg:I

    .line 44
    :cond_1b
    sget v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->sViewLeftMarg:I

    if-ne v0, v2, :cond_2c

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->sViewLeftMarg:I

    .line 48
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mWordNameTextSize:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mWordNameTextColor:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactPhotoHeight:I

    .line 51
    return-void
.end method

.method private bindHead(Landroid/database/Cursor;)V
    .registers 15
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 191
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "sortKey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->getFirstChar(Ljava/lang/String;)C

    move-result v0

    .line 193
    .local v0, "head":C
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 195
    .local v3, "position":I
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-nez v7, :cond_53

    .line 196
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v7, v3, :cond_52

    .line 199
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 200
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "nextSortKey":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->getFirstChar(Ljava/lang/String;)C

    move-result v1

    .line 203
    .local v1, "nextHead":C
    if-eq v0, v1, :cond_4f

    .line 204
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_4f
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 233
    .end local v1    # "nextHead":C
    .end local v2    # "nextSortKey":Ljava/lang/String;
    :cond_52
    :goto_52
    return-void

    .line 211
    :cond_53
    add-int/lit8 v7, v3, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "preSortKey":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->getFirstChar(Ljava/lang/String;)C

    move-result v4

    .line 215
    .local v4, "preHead":C
    if-ne v0, v4, :cond_8c

    .line 216
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_67
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v7, v3, :cond_88

    .line 224
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 225
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2    # "nextSortKey":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->getFirstChar(Ljava/lang/String;)C

    move-result v1

    .line 228
    .restart local v1    # "nextHead":C
    if-eq v0, v1, :cond_88

    .line 229
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .end local v1    # "nextHead":C
    .end local v2    # "nextSortKey":Ljava/lang/String;
    :cond_88
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_52

    .line 218
    :cond_8c
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v7, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_67
.end method

.method private bindPhoto(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .local v15, "fromparams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    .local v18, "separatorParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .local v14, "displayNameParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 107
    .local v4, "contactId":I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-nez v2, :cond_e2

    .line 108
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 109
    .local v5, "photoId":J
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 111
    .local v3, "indicate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_4e

    if-lez v3, :cond_4e

    .line 113
    invoke-static {v3}, Lcom/lewa/PIM/mms/ui/MessageUtils;->getSimType(I)J

    move-result-wide v5

    .line 115
    :cond_4e
    const/4 v13, 0x0

    .line 116
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mShowSmartAvatar:Z

    if-eqz v2, :cond_71

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mWordNameTextSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mWordNameTextColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactPhotoHeight:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/lewa/PIM/common/CommonMethod;->getContactSmartPhoto(Landroid/content/Context;IIJLjava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 121
    :cond_71
    if-eqz v13, :cond_cd

    move-object/from16 v2, p1

    .line 122
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getPhotoLoader()Lcom/lewa/PIM/contacts/ContactPhotoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Lcom/lewa/PIM/contacts/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    :goto_8b
    const/4 v2, 0x0

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 128
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 130
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getImageMargRight()I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 132
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->mylImageMarg:I

    check-cast p1, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    .end local p1    # "context":Landroid/content/Context;
    check-cast p1, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :goto_cc
    return-void

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_cd
    move-object/from16 v2, p1

    .line 125
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getPhotoLoader()Lcom/lewa/PIM/contacts/ContactPhotoManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v9, v5

    invoke-virtual/range {v7 .. v12}, Lcom/lewa/PIM/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_8b

    .line 140
    .end local v3    # "indicate":I
    .end local v5    # "photoId":J
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v17

    .line 141
    .local v17, "position":I
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 142
    .restart local v5    # "photoId":J
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 143
    .restart local v3    # "indicate":I
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 144
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, "perContactId":I
    move-object/from16 v2, p1

    .line 145
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getImageMargRight()I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 147
    move/from16 v0, v16

    if-ne v4, v0, :cond_188

    move-object/from16 v2, p1

    .line 148
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getImageWidthRight()I

    move-result v2

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v2, p1

    .line 151
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getImageWidthRight()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 152
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_182

    .line 153
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 179
    :goto_14c
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->mylImageMarg:I

    check-cast p1, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    .end local p1    # "context":Landroid/content/Context;
    check-cast p1, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_cc

    .line 155
    .restart local p1    # "context":Landroid/content/Context;
    :cond_182
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_14c

    .line 158
    :cond_188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_19c

    if-lez v3, :cond_19c

    .line 160
    invoke-static {v3}, Lcom/lewa/PIM/mms/ui/MessageUtils;->getSimType(I)J

    move-result-wide v5

    .line 163
    :cond_19c
    const/4 v13, 0x0

    .line 164
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mShowSmartAvatar:Z

    if-eqz v2, :cond_1c6

    .line 165
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mWordNameTextSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mWordNameTextColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactPhotoHeight:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/lewa/PIM/common/CommonMethod;->getContactSmartPhoto(Landroid/content/Context;IIJLjava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 170
    :cond_1c6
    if-eqz v13, :cond_1d9

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    :goto_1cf
    const/4 v2, 0x0

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_14c

    :cond_1d9
    move-object/from16 v2, p1

    .line 173
    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    check-cast v2, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getPhotoLoader()Lcom/lewa/PIM/contacts/ContactPhotoManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v9, v5

    invoke-virtual/range {v7 .. v12}, Lcom/lewa/PIM/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_1cf
.end method

.method private getFirstChar(Ljava/lang/String;)C
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 85
    .local v0, "ch":C
    if-ltz v0, :cond_e

    const/16 v1, 0x40

    if-gt v0, v1, :cond_e

    .line 86
    const/16 v0, 0x23

    .line 93
    :cond_d
    :goto_d
    return v0

    .line 87
    :cond_e
    const/16 v1, 0x430

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x44f

    if-gt v0, v1, :cond_1a

    .line 88
    add-int/lit8 v1, v0, -0x20

    int-to-char v0, v1

    goto :goto_d

    .line 89
    :cond_1a
    const/16 v1, 0x410

    if-lt v0, v1, :cond_22

    const/16 v1, 0x42f

    if-le v0, v1, :cond_d

    .line 91
    :cond_22
    const/16 v0, 0x23

    goto :goto_d
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 238
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 240
    :cond_13
    return-void
.end method

.method public bind(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p2}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->bindHead(Landroid/database/Cursor;)V

    .line 68
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactId:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p1

    .line 73
    check-cast v1, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;

    iget-object v2, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lewa/PIM/contacts/activities/ChooseGroupContactsActivity;->getSelectedContact(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 74
    iget-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 79
    :goto_41
    invoke-direct {p0, p1, p2}, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 80
    return-void

    .line 76
    :cond_45
    iget-object v1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_41
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 56
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mAvatarView:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f080249

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayName:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsHead:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mContactsLayout:Landroid/widget/LinearLayout;

    .line 60
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSeparator:Landroid/widget/LinearLayout;

    .line 61
    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    .line 62
    return-void
.end method

.method public setDisplayInSimpleMode(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mDisplayInSimpleMode:Z

    .line 244
    return-void
.end method

.method public setShowSmartAvatar(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/lewa/PIM/contacts/choosecontacts/ContactsPickerFragmentItem;->mShowSmartAvatar:Z

    .line 248
    return-void
.end method
