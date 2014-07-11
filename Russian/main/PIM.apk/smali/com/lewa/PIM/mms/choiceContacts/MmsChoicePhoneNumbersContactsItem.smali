.class public Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;
.super Landroid/widget/LinearLayout;
.source "MmsChoicePhoneNumbersContactsItem.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static sViewLeftMarg:I

.field private static sViewRightMarg:I


# instance fields
.field private mAvatarView:Landroid/widget/ImageView;

.field private mBodyLayout:Landroid/widget/LinearLayout;

.field private mContactPhotoHeight:I

.field private mContactsHead:Landroid/widget/TextView;

.field private mContactsLayout:Landroid/widget/LinearLayout;

.field private mContactsNumber:Landroid/widget/TextView;

.field private mContactsType:Landroid/widget/TextView;

.field protected mDisplayInSimpleMode:Z

.field private mDisplayName:Landroid/widget/TextView;

.field private mImsOnlineState:Landroid/widget/ImageView;

.field public mNumberId:J

.field public mNumberString:Ljava/lang/String;

.field private mSelectCheckBox:Landroid/widget/CheckBox;

.field private mSeparator:Landroid/widget/LinearLayout;

.field protected mShowSmartAvatar:Z

.field private mWordNameTextColor:I

.field private mWordNameTextSize:I

.field private mYlNumberLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 45
    sput v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->sViewRightMarg:I

    .line 46
    sput v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->sViewLeftMarg:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayInSimpleMode:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mShowSmartAvatar:Z

    .line 56
    sget v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->sViewRightMarg:I

    if-ne v0, v2, :cond_1b

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->sViewRightMarg:I

    .line 60
    :cond_1b
    sget v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->sViewLeftMarg:I

    if-ne v0, v2, :cond_2c

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->sViewLeftMarg:I

    .line 64
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mWordNameTextSize:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mWordNameTextColor:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactPhotoHeight:I

    .line 67
    return-void
.end method

.method private bindHead(Landroid/database/Cursor;)V
    .registers 15
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/16 v10, 0xb

    .line 329
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "sortKey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->getFirstChar(Ljava/lang/String;)C

    move-result v0

    .line 331
    .local v0, "head":C
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 333
    .local v3, "position":I
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-nez v7, :cond_54

    .line 334
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

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

    .line 336
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v7, v3, :cond_53

    .line 339
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 340
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "nextSortKey":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->getFirstChar(Ljava/lang/String;)C

    move-result v1

    .line 343
    .local v1, "nextHead":C
    if-eq v0, v1, :cond_50

    .line 344
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_50
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 375
    .end local v1    # "nextHead":C
    .end local v2    # "nextSortKey":Ljava/lang/String;
    :cond_53
    :goto_53
    return-void

    .line 351
    :cond_54
    add-int/lit8 v7, v3, -0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 352
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, "preSortKey":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->getFirstChar(Ljava/lang/String;)C

    move-result v4

    .line 355
    .local v4, "preHead":C
    if-ne v0, v4, :cond_8d

    .line 356
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :goto_68
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v7, v3, :cond_89

    .line 366
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 367
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    .restart local v2    # "nextSortKey":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->getFirstChar(Ljava/lang/String;)C

    move-result v1

    .line 370
    .restart local v1    # "nextHead":C
    if-eq v0, v1, :cond_89

    .line 371
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .end local v1    # "nextHead":C
    .end local v2    # "nextSortKey":Ljava/lang/String;
    :cond_89
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_53

    .line 359
    :cond_8d
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

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

    .line 360
    iget-object v7, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68
.end method

.method private bindPhoto(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .local v17, "fromparams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .local v21, "separatorParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .local v15, "displayNameParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsType:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    .local v14, "contactsTypeParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mYlNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .local v22, "ylNumberLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v2, p1

    .line 165
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mNumberString:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImsNumberState(Ljava/lang/String;)Lcom/lewa/PIM/contacts/util/RosterDataStatusUtil$RosterStatusEntry;

    move-result-object v16

    .line 167
    .local v16, "entry":Lcom/lewa/PIM/contacts/util/RosterDataStatusUtil$RosterStatusEntry;
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 169
    .local v4, "contactId":I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-nez v2, :cond_1e7

    .line 170
    const/4 v2, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 171
    .local v5, "phoneId":J
    const/16 v2, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 173
    .local v3, "indicate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_6f

    if-lez v3, :cond_6f

    .line 175
    invoke-static {v3}, Lcom/lewa/PIM/mms/ui/MessageUtils;->getSimType(I)J

    move-result-wide v5

    .line 177
    :cond_6f
    const/4 v13, 0x0

    .line 178
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mShowSmartAvatar:Z

    if-eqz v2, :cond_92

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mWordNameTextSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mWordNameTextColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactPhotoHeight:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/lewa/PIM/common/CommonMethod;->getContactSmartPhoto(Landroid/content/Context;IIJLjava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 183
    :cond_92
    if-eqz v13, :cond_15a

    move-object/from16 v2, p1

    .line 184
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getPhotoLoader()Lcom/lewa/PIM/contacts/ContactPhotoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Lcom/lewa/PIM/contacts/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    :goto_ac
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 192
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageMargRight()I

    move-result v2

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 193
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageMargRight()I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 194
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageMargRight()I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 196
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImsONOFF()Z

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_19f

    .line 198
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 200
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 203
    if-eqz v16, :cond_17b

    .line 205
    move-object/from16 v0, v16

    iget v2, v0, Lcom/lewa/PIM/contacts/util/RosterDataStatusUtil$RosterStatusEntry;->mState:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_170

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const v7, 0x7f0202b8

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    :goto_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    .end local p1    # "context":Landroid/content/Context;
    :goto_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mYlNumberLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsType:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :goto_159
    return-void

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_15a
    move-object/from16 v2, p1

    .line 187
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getPhotoLoader()Lcom/lewa/PIM/contacts/ContactPhotoManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v9, v5

    invoke-virtual/range {v7 .. v12}, Lcom/lewa/PIM/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto/16 :goto_ac

    .line 208
    :cond_170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const v7, 0x7f0202b7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_128

    .line 214
    :cond_17b
    move-object/from16 v0, v22

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    .end local p1    # "context":Landroid/content/Context;
    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_130

    .line 219
    .restart local p1    # "context":Landroid/content/Context;
    :cond_19f
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 221
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 223
    move-object/from16 v0, v22

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    .end local p1    # "context":Landroid/content/Context;
    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_130

    .line 235
    .end local v3    # "indicate":I
    .end local v5    # "phoneId":J
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1e7
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    .line 236
    .local v20, "position":I
    const/4 v2, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 237
    .restart local v5    # "phoneId":J
    const/16 v2, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 239
    .restart local v3    # "indicate":I
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 241
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .local v19, "perContactId":I
    move-object/from16 v2, p1

    .line 243
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageMargRight()I

    move-result v2

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 244
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageMargRight()I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    .line 245
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageMargRight()I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 247
    move/from16 v0, v19

    if-ne v4, v0, :cond_30b

    move-object/from16 v2, p1

    .line 248
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageWidthRight()I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v2, p1

    .line 251
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImageWidthRight()I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 253
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    if-ge v0, v2, :cond_304

    .line 255
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 256
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 258
    .local v18, "nextContactId":I
    move/from16 v0, v18

    if-eq v4, v0, :cond_27e

    .line 259
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .end local v18    # "nextContactId":I
    :cond_27e
    :goto_27e
    move-object/from16 v2, p1

    .line 287
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getImsONOFF()Z

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3a4

    .line 289
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 291
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 294
    if-eqz v16, :cond_37f

    .line 296
    move-object/from16 v0, v16

    iget v2, v0, Lcom/lewa/PIM/contacts/util/RosterDataStatusUtil$RosterStatusEntry;->mState:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_373

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const v7, 0x7f0202b8

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    :goto_2ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    .end local p1    # "context":Landroid/content/Context;
    :goto_2d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mYlNumberLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsType:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_159

    .line 262
    .restart local p1    # "context":Landroid/content/Context;
    :cond_304
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_27e

    .line 266
    :cond_30b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_31f

    if-lez v3, :cond_31f

    .line 268
    invoke-static {v3}, Lcom/lewa/PIM/mms/ui/MessageUtils;->getSimType(I)J

    move-result-wide v5

    .line 271
    :cond_31f
    const/4 v13, 0x0

    .line 272
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mShowSmartAvatar:Z

    if-eqz v2, :cond_349

    .line 273
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mWordNameTextSize:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mWordNameTextColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactPhotoHeight:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/lewa/PIM/common/CommonMethod;->getContactSmartPhoto(Landroid/content/Context;IIJLjava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 278
    :cond_349
    if-eqz v13, :cond_35e

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    :goto_352
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 284
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_27e

    :cond_35e
    move-object/from16 v2, p1

    .line 281
    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getPhotoLoader()Lcom/lewa/PIM/contacts/ContactPhotoManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v9, v5

    invoke-virtual/range {v7 .. v12}, Lcom/lewa/PIM/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_352

    .line 299
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const v7, 0x7f0202b7

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2ca

    .line 305
    :cond_37f
    move-object/from16 v0, v22

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    .end local p1    # "context":Landroid/content/Context;
    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2d2

    .line 310
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3a4
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 312
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v8, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    iput v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 314
    move-object/from16 v0, v22

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v2, p1

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    check-cast v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    iget v2, v2, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageMarg:I

    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    .end local p1    # "context":Landroid/content/Context;
    check-cast p1, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->mylImageWidth:I

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    move-object/from16 v0, v22

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2d2
.end method

.method private getFirstChar(Ljava/lang/String;)C
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    .local v0, "ch":C
    if-ltz v0, :cond_e

    const/16 v1, 0x40

    if-gt v0, v1, :cond_e

    .line 138
    const/16 v0, 0x23

    .line 145
    :cond_d
    :goto_d
    return v0

    .line 139
    :cond_e
    const/16 v1, 0x430

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x44f

    if-gt v0, v1, :cond_1a

    .line 140
    add-int/lit8 v1, v0, -0x20

    int-to-char v0, v1

    goto :goto_d

    .line 141
    :cond_1a
    const/16 v1, 0x410

    if-lt v0, v1, :cond_22

    const/16 v1, 0x42f

    if-le v0, v1, :cond_d

    .line 143
    :cond_22
    const/16 v0, 0x23

    goto :goto_d
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 380
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 382
    :cond_13
    return-void
.end method

.method public bind(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 89
    invoke-direct {p0, p2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->bindHead(Landroid/database/Cursor;)V

    .line 92
    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iput-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mNumberString:Ljava/lang/String;

    .line 101
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mNumberId:J

    move-object v5, p1

    .line 103
    check-cast v5, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v5}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getIsSingleSel()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 104
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_36
    const/16 v5, 0x9

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "mtype":Ljava/lang/String;
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 117
    .local v4, "type":I
    const-string v0, ""

    .line 119
    .local v0, "contactsType":Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 120
    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_52
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsType:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->bindPhoto(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 132
    return-void

    .line 106
    .end local v0    # "contactsType":Ljava/lang/String;
    .end local v1    # "mtype":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_5b
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    move-object v5, p1

    .line 107
    check-cast v5, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;

    invoke-virtual {v5, v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getSelectedNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 108
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_36

    .line 110
    :cond_6f
    iget-object v5, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_36

    .line 122
    .restart local v0    # "contactsType":Ljava/lang/String;
    .restart local v1    # "mtype":Ljava/lang/String;
    .restart local v4    # "type":I
    :cond_75
    if-nez v4, :cond_7d

    .line 123
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 125
    :cond_7d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoiceContactsActivity;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 72
    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mAvatarView:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f080249

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayName:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f08017e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsHead:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsNumber:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsType:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mContactsLayout:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSeparator:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f08029d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mImsOnlineState:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mYlNumberLayout:Landroid/widget/LinearLayout;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mNumberString:Ljava/lang/String;

    .line 84
    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mSelectCheckBox:Landroid/widget/CheckBox;

    .line 85
    return-void
.end method

.method public setDisplayInSimpleMode(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mDisplayInSimpleMode:Z

    .line 386
    return-void
.end method

.method public setShowSmartAvatar(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContactsItem;->mShowSmartAvatar:Z

    .line 390
    return-void
.end method
