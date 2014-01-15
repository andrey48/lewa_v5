.class public Lcom/lewa/PIM/widget/AlphabetFastIndexer;
.super Landroid/view/View;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mAlphabetBg:Landroid/graphics/drawable/Drawable;

.field private mChooseColor:I

.field private mHasActionBar:Z

.field private mHasFav:Z

.field private mLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingBottom:I

.field private mTextsize:I

.field onTouchingLetterChangedListener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;

.field private showBkg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u2605"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0410"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0411"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0412"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0413"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0414"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0415"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0416"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0417"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0418"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u041A"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u041B"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u041C"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u041D"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u041E"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u041F"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u0420"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0421"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u0422"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u0423"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u0424"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u0425"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u0426"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u0427"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u0428"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u0429"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u042D"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u042E"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u042F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    .line 30
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 31
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 33
    iput-boolean v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 51
    invoke-direct {p0, p1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->init(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setHasFavorite(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    .line 30
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 31
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 33
    iput-boolean v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0, p1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->init(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setHasFavorite(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    .line 30
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 31
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 33
    iput-boolean v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->init(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setHasFavorite(Z)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mChooseColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mTextsize:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mPaddingBottom:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 136
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 137
    .local v2, y:F
    invoke-virtual {p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 138
    .local v1, c:I
    packed-switch v0, :pswitch_data_44

    .line 161
    :goto_1c
    const-string v3, "AlphabetFastIndexer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " dispatchTouchEvent , showBkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v6

    .line 140
    :pswitch_37
    iput-boolean v6, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 152
    :pswitch_39
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->drawThumb(I)V

    goto :goto_1c

    .line 156
    :pswitch_3d
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 158
    invoke-virtual {p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->invalidate()V

    goto :goto_1c

    .line 138
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3d
        :pswitch_39
        :pswitch_3d
    .end packed-switch
.end method

.method public drawThumb(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->onTouchingLetterChangedListener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;

    .line 172
    .local v0, listener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;
    iget v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-eq v1, p1, :cond_24

    if-eqz v0, :cond_24

    .line 173
    if-ltz p1, :cond_24

    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 174
    if-eqz v0, :cond_1f

    .line 175
    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 177
    :cond_1f
    iput p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 178
    invoke-virtual {p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->invalidate()V

    .line 181
    :cond_24
    return-void
.end method

.method public drawThumb(Ljava/lang/String;)V
    .registers 5
    .parameter "letter"

    .prologue
    .line 184
    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 185
    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 186
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    .line 187
    :cond_1a
    iget v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-eq v1, v0, :cond_23

    .line 188
    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 189
    invoke-virtual {p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->invalidate()V

    .line 192
    .end local v0           #i:I
    :cond_23
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter "canvas"

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->getHeight()I

    move-result v2

    .line 97
    .local v2, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->getWidth()I

    move-result v9

    .line 98
    .local v9, width:I
    const-string v12, "AlphabetFastIndexer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " showBkg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    if-eqz v12, :cond_e2

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_45

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_45
    :goto_45
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 108
    .local v8, size:I
    div-int v7, v2, v8

    .line 109
    .local v7, singleHeight:I
    mul-int v12, v7, v8

    sub-int v6, v2, v12

    .line 110
    .local v6, remainder:I
    div-int/lit8 v5, v6, 0x2

    .line 111
    .local v5, paddingTop:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_56
    if-ge v3, v8, :cond_ef

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    const v13, -0x777778

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mTextsize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    if-nez v3, :cond_96

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 118
    .local v1, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    int-to-float v12, v5

    int-to-float v13, v7

    iget v14, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v15, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v5, v12

    .line 120
    .end local v1           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    :cond_96
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-ne v3, v12, :cond_af

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mChooseColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 124
    :cond_af
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    .local v4, letterStr:Ljava/lang/String;
    div-int/lit8 v12, v9, 0x2

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float v10, v12, v13

    .line 126
    .local v10, xPos:F
    mul-int v12, v7, v3

    add-int/2addr v12, v7

    add-int/2addr v12, v5

    int-to-float v11, v12

    .line 127
    .local v11, yPos:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->reset()V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_56

    .line 105
    .end local v3           #i:I
    .end local v4           #letterStr:Ljava/lang/String;
    .end local v5           #paddingTop:I
    .end local v6           #remainder:I
    .end local v7           #singleHeight:I
    .end local v8           #size:I
    .end local v10           #xPos:F
    .end local v11           #yPos:F
    :cond_e2
    const-string v12, "#00000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_45

    .line 131
    .restart local v3       #i:I
    .restart local v5       #paddingTop:I
    .restart local v6       #remainder:I
    .restart local v7       #singleHeight:I
    .restart local v8       #size:I
    :cond_ef
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mPaddingBottom:I

    sub-int/2addr p2, v0

    .end local p2
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHasActionBar(Z)V
    .registers 3
    .parameter "hasActionBar"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    if-eq v0, p1, :cond_6

    .line 81
    iput-boolean p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 83
    :cond_6
    return-void
.end method

.method public setHasFavorite(Z)V
    .registers 8
    .parameter "hasFav"

    .prologue
    .line 63
    iget-boolean v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    if-eq v4, p1, :cond_3c

    .line 64
    iput-boolean p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 65
    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 66
    sget-object v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->b:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_f
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    .line 67
    .local v3, letter:Ljava/lang/String;
    if-nez p1, :cond_20

    const-string v4, "\u2605"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 66
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 69
    :cond_20
    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 71
    .end local v3           #letter:Ljava/lang/String;
    :cond_26
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-eqz v4, :cond_32

    if-eqz p1, :cond_3d

    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    add-int/lit8 v4, v4, 0x1

    :goto_30
    iput v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 72
    :cond_32
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-gez v4, :cond_42

    const/4 v4, 0x0

    iput v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 75
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->requestLayout()V

    .line 77
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_3c
    return-void

    .line 71
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_3d
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_30

    .line 73
    :cond_42
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    iget-object v5, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_39

    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    goto :goto_39
.end method

.method public setOnTouchingLetterChangedListener(Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;)V
    .registers 2
    .parameter "onTouchingLetterChangedListener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->onTouchingLetterChangedListener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;

    .line 201
    return-void
.end method
