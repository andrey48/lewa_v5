.class public Lcom/lewa/PIM/common/indexbar/IndexBar;
.super Landroid/widget/RelativeLayout;
.source "IndexBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/PIM/common/indexbar/IndexBar$IndexBarOnClicker;
    }
.end annotation


# static fields
.field public static final BUTTONKEY:Ljava/lang/String; = "Button"

.field private static final MAX_COLUMNS:I = 0x6

.field private static final MAX_ROWS:I = 0x6

.field private static final PAGE_SIZE:I = 0x24

.field private static final TAG:Ljava/lang/String; = "IndexBar"


# instance fields
.field private alphaAdapter:Lcom/lewa/PIM/common/indexbar/AlphaAdapter;

.field alpha_menu:Landroid/widget/RelativeLayout;

.field alpha_menu_Showed:Z

.field alphabutton:Landroid/widget/TextView;

.field arraylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private artist:[Ljava/lang/String;

.field bar:Landroid/widget/RelativeLayout;

.field container:Landroid/view/ViewGroup;

.field currentpage:I

.field cursor:Landroid/database/Cursor;

.field private down:Landroid/widget/ImageButton;

.field private duration:[Ljava/lang/String;

.field private gridview:Landroid/widget/GridView;

.field h:I

.field h1:I

.field handler:Landroid/os/Handler;

.field private hideAction:Landroid/view/animation/Animation;

.field private id:[I

.field idexbar_shadow:Landroid/widget/RelativeLayout;

.field private list:Landroid/widget/ListView;

.field list1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listview:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field onclicker:Lcom/lewa/PIM/common/indexbar/IndexBar$IndexBarOnClicker;

.field page_count:I

.field previousPageNum:I

.field scrollbarView:Landroid/widget/RelativeLayout;

.field private scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

.field private sectionIndexter:Landroid/widget/SectionIndexer;

.field private showAction:Landroid/view/animation/Animation;

.field private song_first_name:[Ljava/lang/String;

.field private song_first_name1:[Ljava/lang/String;

.field private song_first_name2:[Ljava/lang/String;

.field private song_first_name3:[Ljava/lang/String;

.field private sortedHead:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field t:I

.field private title:[Ljava/lang/String;

.field private title_pinyin:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->sectionIndexter:Landroid/widget/SectionIndexer;

    .line 53
    iput v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->t:I

    .line 54
    iput v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h:I

    iput v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h1:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->page_count:I

    .line 56
    iput v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->currentpage:I

    .line 64
    iput v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->previousPageNum:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->list1:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->arraylist:Ljava/util/ArrayList;

    .line 546
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->handler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/PIM/common/indexbar/IndexBar;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/lewa/PIM/common/indexbar/IndexBar;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->sortedHead:Ljava/util/List;

    return-object v0
.end method

.method public static extractHeadLetter(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "fisrtLetters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v0, "freshData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 418
    .local v1, "headLetter":Ljava/lang/String;
    const/4 v3, 0x0

    .line 419
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8a

    .line 420
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headLetter":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 421
    .restart local v1    # "headLetter":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x80

    if-le v7, v8, :cond_3b

    .line 422
    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_54

    .line 423
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headLetter":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 424
    .restart local v1    # "headLetter":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 425
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 442
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_3b
    :goto_3b
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headLetter":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 443
    .restart local v1    # "headLetter":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 444
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 419
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 429
    :cond_54
    invoke-static {}, Lcom/lewa/PIM/common/HanziToPinyin;->getInstance()Lcom/lewa/PIM/common/HanziToPinyin;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/lewa/PIM/common/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 430
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lewa/PIM/common/HanziToPinyin$Token;>;"
    if-eqz v6, :cond_3b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3b

    .line 431
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lewa/PIM/common/HanziToPinyin$Token;

    .line 432
    .local v5, "token":Lcom/lewa/PIM/common/HanziToPinyin$Token;
    const/4 v7, 0x2

    iget v8, v5, Lcom/lewa/PIM/common/HanziToPinyin$Token;->type:I

    if-ne v7, v8, :cond_3b

    .line 433
    iget-object v7, v5, Lcom/lewa/PIM/common/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 435
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3b

    .line 481
    .end local v5    # "token":Lcom/lewa/PIM/common/HanziToPinyin$Token;
    .end local v6    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lewa/PIM/common/HanziToPinyin$Token;>;"
    :cond_8a
    return-object v0
.end method

.method private hideIndexBarShadow()V
    .registers 5

    .prologue
    .line 564
    new-instance v0, Lcom/lewa/PIM/common/indexbar/IndexBar$2;

    invoke-direct {v0, p0}, Lcom/lewa/PIM/common/indexbar/IndexBar$2;-><init>(Lcom/lewa/PIM/common/indexbar/IndexBar;)V

    .line 575
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    return-void
.end method

.method private showIndexBarShadow()V
    .registers 5

    .prologue
    .line 549
    new-instance v0, Lcom/lewa/PIM/common/indexbar/IndexBar$1;

    invoke-direct {v0, p0}, Lcom/lewa/PIM/common/indexbar/IndexBar$1;-><init>(Lcom/lewa/PIM/common/indexbar/IndexBar;)V

    .line 560
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    return-void
.end method

.method public static toHeadLetterMap(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lewa/PIM/common/indexbar/IndexBar;->toHeadLetterMap(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toHeadLetterMap(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "firstLetters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/lewa/PIM/common/indexbar/IndexBar;->extractHeadLetter(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v4

    .line 488
    .local v4, "strs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 490
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v3, :cond_28

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Button"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 496
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_28
    return-object v2
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 519
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    invoke-virtual {v0}, Lcom/lewa/PIM/common/indexbar/Scroller_view;->clearAlphaAdapters()V

    .line 520
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    .line 522
    return-void
.end method

.method public doMixedOrderBy([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)[Ljava/lang/String;
    .registers 15
    .param p1, "titles"    # [Ljava/lang/String;
    .param p2, "sortedhead"    # [Ljava/lang/String;
    .param p3, "k"    # Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 232
    array-length v3, p1

    .line 233
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v3, :cond_af

    .line 234
    iget-object v7, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 235
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 236
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    aget-object v8, v8, v1

    aput-object v8, p2, v7

    .line 239
    :cond_26
    const/4 v0, 0x0

    .line 240
    .local v0, "flag":Z
    add-int/lit8 v6, v1, 0x1

    .local v6, "p":I
    :goto_29
    if-ge v6, v3, :cond_3c

    .line 241
    iget-object v7, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    aget-object v7, v7, v6

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 242
    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->t:I

    .line 243
    const/4 v0, 0x1

    .line 248
    :cond_3c
    if-eqz v0, :cond_78

    .line 249
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_40
    iget v7, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->t:I

    add-int/lit8 v7, v7, 0x1

    if-ge v2, v7, :cond_ab

    .line 250
    iget-object v7, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "name_first":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, p2, v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_72

    .line 252
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 253
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-object v5, p2, v7

    .line 249
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 240
    .end local v2    # "j":I
    .end local v5    # "name_first":Ljava/lang/String;
    :cond_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 257
    :cond_78
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "j":I
    :goto_7a
    add-int/lit8 v7, v3, 0x1

    if-ge v2, v7, :cond_ab

    .line 258
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "name_first":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, p2, v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 260
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 261
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-object v5, p2, v7

    .line 257
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 233
    .end local v5    # "name_first":Ljava/lang/String;
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 267
    .end local v0    # "flag":Z
    .end local v2    # "j":I
    .end local v6    # "p":I
    :cond_af
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_b0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v2, v7, :cond_cc

    .line 268
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "alphabutton"

    aget-object v8, p2, v2

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v7, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->arraylist:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 272
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_cc
    return-object p2
.end method

.method public getAlpha_menu()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getDown()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->down:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getGridview()Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->gridview:Landroid/widget/GridView;

    return-object v0
.end method

.method public getHideAction()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->hideAction:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getScrollerView()Lcom/lewa/PIM/common/indexbar/Scroller_view;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    return-object v0
.end method

.method public getShowAction()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->showAction:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public hide(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu_Showed:Z

    if-eqz v0, :cond_18

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu_Showed:Z

    .line 507
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->hideAction:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 508
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    invoke-direct {p0}, Lcom/lewa/PIM/common/indexbar/IndexBar;->hideIndexBarShadow()V

    .line 515
    :cond_18
    return-void
.end method

.method public isAlpha_menu_Showed()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu_Showed:Z

    return v0
.end method

.method public isOnlyOnePage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 216
    iget v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->page_count:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public item_sort([Ljava/lang/String;)V
    .registers 21
    .param p1, "titles"    # [Ljava/lang/String;

    .prologue
    .line 301
    move-object/from16 v0, p1

    array-length v4, v0

    .line 302
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v1, v15, :cond_aa

    .line 303
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v16, p1, v1

    aput-object v16, v15, v1

    .line 304
    aget-object v15, p1, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x430

    move/from16 v0, v16

    if-lt v15, v0, :cond_2d

    aget-object v15, p1, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x44f

    move/from16 v0, v16

    if-le v15, v0, :cond_49

    :cond_2d
    aget-object v15, p1, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x410

    move/from16 v0, v16

    if-lt v15, v0, :cond_93

    aget-object v15, p1, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x42f

    move/from16 v0, v16

    if-gt v15, v0, :cond_93

    .line 306
    :cond_49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aget-object v16, p1, v1

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v1

    .line 311
    :goto_59
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aget-object v15, v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x430

    move/from16 v0, v16

    if-lt v15, v0, :cond_8f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aget-object v15, v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x44f

    move/from16 v0, v16

    if-gt v15, v0, :cond_8f

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v1

    .line 302
    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 308
    :cond_93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v1

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v1

    goto :goto_59

    .line 316
    :cond_aa
    const/4 v1, 0x0

    :goto_ab
    if-ge v1, v4, :cond_10c

    .line 317
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_ae
    sub-int v15, v4, v1

    add-int/lit8 v15, v15, -0x1

    if-ge v2, v15, :cond_109

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "title_pinyin_first":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    add-int/lit8 v16, v2, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 320
    .local v14, "title_pinyin_first1":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_106

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v6, v15, v2

    .line 322
    .local v6, "pinyintemp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, 0x1

    aget-object v16, v16, v17

    aput-object v16, v15, v2

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    add-int/lit8 v16, v2, 0x1

    aput-object v6, v15, v16

    .line 317
    .end local v6    # "pinyintemp":Ljava/lang/String;
    :cond_106
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 316
    .end local v13    # "title_pinyin_first":Ljava/lang/String;
    .end local v14    # "title_pinyin_first1":Ljava/lang/String;
    :cond_109
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 328
    .end local v2    # "j":I
    :cond_10c
    const/4 v1, 0x0

    :goto_10d
    if-ge v1, v4, :cond_19a

    .line 329
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_110
    sub-int v15, v4, v1

    add-int/lit8 v15, v15, -0x1

    if-ge v2, v15, :cond_196

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aget-object v15, v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, 0x1

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_192

    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aget-object v8, v15, v2

    .line 332
    .local v8, "temp":Ljava/lang/String;
    aget-object v12, p1, v2

    .line 333
    .local v12, "temptitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    aget-object v10, v15, v2

    .line 334
    .local v10, "tempduration":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    aget-object v9, v15, v2

    .line 336
    .local v9, "tempartist":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, 0x1

    aget-object v16, v16, v17

    aput-object v16, v15, v2

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    add-int/lit8 v16, v2, 0x1

    aput-object v8, v15, v16

    .line 339
    add-int/lit8 v15, v2, 0x1

    aget-object v15, p1, v15

    aput-object v15, p1, v2

    .line 340
    add-int/lit8 v15, v2, 0x1

    aput-object v12, p1, v15

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, 0x1

    aget-object v16, v16, v17

    aput-object v16, v15, v2

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    add-int/lit8 v16, v2, 0x1

    aput-object v10, v15, v16

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    move-object/from16 v16, v0

    add-int/lit8 v17, v2, 0x1

    aget-object v16, v16, v17

    aput-object v16, v15, v2

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    add-int/lit8 v16, v2, 0x1

    aput-object v9, v15, v16

    .line 329
    .end local v8    # "temp":Ljava/lang/String;
    .end local v9    # "tempartist":Ljava/lang/String;
    .end local v10    # "tempduration":Ljava/lang/String;
    .end local v12    # "temptitle":Ljava/lang/String;
    :cond_192
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_110

    .line 328
    :cond_196
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10d

    .line 351
    .end local v2    # "j":I
    :cond_19a
    const/4 v1, 0x0

    :goto_19b
    if-ge v1, v4, :cond_1ae

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v1

    aput-object v16, v15, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_19b

    .line 355
    :cond_1ae
    const/4 v1, 0x0

    :goto_1af
    add-int/lit8 v15, v4, -0x1

    if-ge v1, v15, :cond_1d9

    .line 356
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "j":I
    :goto_1b5
    if-ge v2, v4, :cond_1d6

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    aget-object v15, v15, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d3

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    const-string v16, " "

    aput-object v16, v15, v2

    .line 356
    :cond_1d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b5

    .line 355
    :cond_1d6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    .line 363
    .end local v2    # "j":I
    :cond_1d9
    const/4 v7, 0x0

    .line 364
    .local v7, "song_first_name3_id":I
    const/4 v1, 0x0

    :goto_1db
    if-ge v1, v4, :cond_1fe

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    aget-object v15, v15, v1

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1fb

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name3:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name1:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v1

    aput-object v16, v15, v7

    .line 367
    add-int/lit8 v7, v7, 0x1

    .line 364
    :cond_1fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_1db

    .line 371
    :cond_1fe
    const/4 v1, 0x0

    :goto_1ff
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name3:[Ljava/lang/String;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    if-ge v1, v15, :cond_335

    .line 372
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name3:[Ljava/lang/String;

    aget-object v15, v15, v1

    if-eqz v15, :cond_331

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name3:[Ljava/lang/String;

    aget-object v11, v15, v1

    .line 374
    .local v11, "tempstring":Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    array-length v15, v15

    if-ge v2, v15, :cond_256

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_252

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_299

    .line 377
    :cond_252
    move-object/from16 v0, p0

    iput v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h:I

    .line 382
    :cond_256
    const/4 v2, 0x0

    :goto_257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    array-length v15, v15

    if-ge v2, v15, :cond_29d

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_292

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->title_pinyin:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_296

    .line 385
    :cond_292
    move-object/from16 v0, p0

    iput v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h1:I

    .line 382
    :cond_296
    add-int/lit8 v2, v2, 0x1

    goto :goto_257

    .line 374
    :cond_299
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_217

    .line 389
    :cond_29d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h:I

    .local v3, "k":I
    :goto_2a1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h1:I

    if-ge v3, v15, :cond_331

    .line 390
    add-int/lit8 v5, v3, 0x1

    .local v5, "m":I
    :goto_2a9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->h1:I

    add-int/lit8 v15, v15, 0x1

    if-ge v5, v15, :cond_32d

    .line 391
    aget-object v15, p1, v3

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    aget-object v16, p1, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_329

    .line 392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aget-object v8, v15, v3

    .line 393
    .restart local v8    # "temp":Ljava/lang/String;
    aget-object v12, p1, v3

    .line 394
    .restart local v12    # "temptitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    aget-object v10, v15, v3

    .line 395
    .restart local v10    # "tempduration":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    aget-object v9, v15, v3

    .line 397
    .restart local v9    # "tempartist":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    aput-object v16, v15, v3

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name:[Ljava/lang/String;

    aput-object v8, v15, v5

    .line 400
    aget-object v15, p1, v5

    aput-object v15, p1, v3

    .line 401
    aput-object v12, p1, v5

    .line 403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    aput-object v16, v15, v3

    .line 404
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->duration:[Ljava/lang/String;

    aput-object v10, v15, v5

    .line 406
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    aput-object v16, v15, v3

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->artist:[Ljava/lang/String;

    aput-object v9, v15, v5

    .line 390
    .end local v8    # "temp":Ljava/lang/String;
    .end local v9    # "tempartist":Ljava/lang/String;
    .end local v10    # "tempduration":Ljava/lang/String;
    .end local v12    # "temptitle":Ljava/lang/String;
    :cond_329
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2a9

    .line 389
    :cond_32d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2a1

    .line 371
    .end local v2    # "j":I
    .end local v3    # "k":I
    .end local v5    # "m":I
    .end local v11    # "tempstring":Ljava/lang/String;
    :cond_331
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1ff

    .line 413
    :cond_335
    return-void
.end method

.method public load(Landroid/view/ViewGroup;Ljava/util/List;I[Ljava/lang/String;[ILcom/lewa/PIM/common/indexbar/IndexBar$IndexBarOnClicker;)V
    .registers 33
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p3, "res"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "onclicker"    # Lcom/lewa/PIM/common/indexbar/IndexBar$IndexBarOnClicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Lcom/lewa/PIM/common/indexbar/IndexBar$IndexBarOnClicker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "sortedHead":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/16 v21, 0x0

    .line 140
    .local v21, "page_size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 142
    .local v11, "flater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/PIM/common/indexbar/IndexBar;->container:Landroid/view/ViewGroup;

    .line 143
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/PIM/common/indexbar/IndexBar;->onclicker:Lcom/lewa/PIM/common/indexbar/IndexBar$IndexBarOnClicker;

    .line 145
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->showAction:Landroid/view/animation/Animation;

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->showAction:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x96

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->hideAction:Landroid/view/animation/Animation;

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->hideAction:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x96

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu_Showed:Z

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-virtual {v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 160
    .local v12, "grid_item":Landroid/view/View;
    const v2, 0x7f080051

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 161
    .local v15, "item_button":Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 164
    .local v16, "itemlayoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v22, v2, 0x6

    .line 165
    .local v22, "rows":I
    const/4 v2, 0x6

    move/from16 v0, v22

    if-le v0, v2, :cond_7f

    const/16 v22, 0x6

    .line 166
    :cond_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 167
    .local v20, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int v2, v2, v22

    move-object/from16 v0, v20

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Lcom/lewa/PIM/common/indexbar/Scroller_view;->setChildHeight(I)V

    .line 169
    const/16 v21, 0x24

    .line 171
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lewa/PIM/common/indexbar/IndexBar;->sortedHead:Ljava/util/List;

    .line 172
    const/16 v23, -0x1

    .line 173
    .local v23, "size":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->song_first_name2:[Ljava/lang/String;

    .line 175
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    .line 176
    .local v14, "headSize":I
    rem-int v2, v14, v21

    if-nez v2, :cond_e4

    div-int v24, v14, v21

    .line 177
    .local v24, "totalPage":I
    :goto_ba
    move/from16 v23, v24

    .line 179
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_bd
    move/from16 v0, v23

    if-ge v8, v0, :cond_13c

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v4, "pageList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    mul-int v19, v8, v21

    .line 182
    .local v19, "kStart":I
    add-int/lit8 v2, v23, -0x1

    if-ne v8, v2, :cond_e9

    move/from16 v18, v14

    .line 184
    .local v18, "kMax":I
    :goto_ce
    move/from16 v17, v19

    .local v17, "k":I
    :goto_d0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_ee

    .line 185
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v17, v17, 0x1

    goto :goto_d0

    .line 176
    .end local v4    # "pageList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v8    # "j":I
    .end local v17    # "k":I
    .end local v18    # "kMax":I
    .end local v19    # "kStart":I
    .end local v24    # "totalPage":I
    :cond_e4
    div-int v2, v14, v21

    add-int/lit8 v24, v2, 0x1

    goto :goto_ba

    .line 182
    .restart local v4    # "pageList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .restart local v8    # "j":I
    .restart local v19    # "kStart":I
    .restart local v24    # "totalPage":I
    :cond_e9
    add-int/lit8 v2, v8, 0x1

    mul-int v18, v2, v21

    goto :goto_ce

    .line 188
    .restart local v17    # "k":I
    .restart local v18    # "kMax":I
    :cond_ee
    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 189
    .local v25, "view":Landroid/view/View;
    const v2, 0x7f08004e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/GridView;

    .line 191
    .local v13, "gridview":Landroid/widget/GridView;
    new-instance v2, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->mContext:Landroid/content/Context;

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alphaAdapter:Lcom/lewa/PIM/common/indexbar/AlphaAdapter;

    .line 193
    const/16 v2, 0x32

    invoke-virtual {v13, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 202
    if-eqz p6, :cond_120

    .line 203
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 205
    :cond_120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alphaAdapter:Lcom/lewa/PIM/common/indexbar/AlphaAdapter;

    invoke-virtual {v2, v3}, Lcom/lewa/PIM/common/indexbar/Scroller_view;->addAlphaAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    .line 210
    .end local v4    # "pageList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v13    # "gridview":Landroid/widget/GridView;
    .end local v17    # "k":I
    .end local v18    # "kMax":I
    .end local v19    # "kStart":I
    .end local v25    # "view":Landroid/view/View;
    :cond_13c
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lewa/PIM/common/indexbar/IndexBar;->page_count:I

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lewa/PIM/common/indexbar/IndexBar;->setScrollbarPos(I)V

    .line 213
    return-void
.end method

.method public load(Landroid/widget/RelativeLayout;Landroid/widget/ListView;Ljava/util/List;I[Ljava/lang/String;[ILjava/lang/Object;)V
    .registers 8
    .param p1, "rl"    # Landroid/widget/RelativeLayout;
    .param p2, "list2"    # Landroid/widget/ListView;
    .param p4, "alphalistItem"    # I
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I
    .param p7, "onclicker2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p3, "headLetterMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 298
    return-void
.end method

.method public setAlpha_menu(Landroid/widget/RelativeLayout;)V
    .registers 2
    .param p1, "alpha_menu"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    .line 118
    return-void
.end method

.method public setAlpha_menu_Showed(Z)V
    .registers 2
    .param p1, "alpha_menu_Showed"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu_Showed:Z

    .line 114
    return-void
.end method

.method public setDown(Landroid/widget/ImageButton;)V
    .registers 2
    .param p1, "down"    # Landroid/widget/ImageButton;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->down:Landroid/widget/ImageButton;

    .line 110
    return-void
.end method

.method public setGridview(Landroid/widget/GridView;)V
    .registers 2
    .param p1, "gridview"    # Landroid/widget/GridView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->gridview:Landroid/widget/GridView;

    .line 102
    return-void
.end method

.method public setHideAction(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "hideAction"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->hideAction:Landroid/view/animation/Animation;

    .line 90
    return-void
.end method

.method public setResrcIds(Lcom/lewa/PIM/common/indexbar/IndexBar;Landroid/view/ViewGroup;IIIIII)V
    .registers 10
    .param p1, "bar"    # Lcom/lewa/PIM/common/indexbar/IndexBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "scrooll_view_id"    # I
    .param p4, "menu_id"    # I
    .param p5, "alphabuttonid"    # I
    .param p6, "leftid"    # I
    .param p7, "rightid"    # I
    .param p8, "downid"    # I

    .prologue
    .line 222
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lewa/PIM/common/indexbar/Scroller_view;

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    .line 224
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    invoke-virtual {v0, p1}, Lcom/lewa/PIM/common/indexbar/Scroller_view;->setIndexBar(Lcom/lewa/PIM/common/indexbar/IndexBar;)V

    .line 225
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    .line 226
    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alphabutton:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f080276

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->idexbar_shadow:Landroid/widget/RelativeLayout;

    .line 228
    const v0, 0x7f080279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scrollbarView:Landroid/widget/RelativeLayout;

    .line 229
    return-void
.end method

.method public setScrollbarPos(I)V
    .registers 7
    .param p1, "pageNum"    # I

    .prologue
    .line 525
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->page_count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 526
    iget-object v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scrollbarView:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_c
    :goto_c
    return-void

    .line 527
    :cond_d
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->page_count:I

    if-gt p1, v3, :cond_c

    .line 528
    iget-object v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 529
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->page_count:I

    div-int v1, v3, v4

    .line 530
    .local v1, "scrollbarHeight":I
    iget-object v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scrollbarView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 531
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 532
    iget-object v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scrollbarView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    .line 533
    .local v2, "scrollbarY":F
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->previousPageNum:I

    if-ge v3, p1, :cond_47

    .line 534
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->previousPageNum:I

    sub-int v3, p1, v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 538
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scrollbarView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scrollbarView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setY(F)V

    .line 541
    iput p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->previousPageNum:I

    goto :goto_c

    .line 535
    :cond_47
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->previousPageNum:I

    if-le v3, p1, :cond_3a

    .line 536
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->previousPageNum:I

    sub-int/2addr v3, p1

    mul-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_3a
.end method

.method public setShowAction(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "showAction"    # Landroid/view/animation/Animation;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->showAction:Landroid/view/animation/Animation;

    .line 82
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu_Showed:Z

    .line 580
    invoke-virtual {p0, v2}, Lcom/lewa/PIM/common/indexbar/IndexBar;->setScrollbarPos(I)V

    .line 581
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->scroller_view:Lcom/lewa/PIM/common/indexbar/Scroller_view;

    invoke-virtual {v0, v2}, Lcom/lewa/PIM/common/indexbar/Scroller_view;->setToScreen(I)V

    .line 582
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->showAction:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 584
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->idexbar_shadow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    invoke-direct {p0}, Lcom/lewa/PIM/common/indexbar/IndexBar;->showIndexBarShadow()V

    .line 586
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/IndexBar;->alpha_menu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 587
    return-void
.end method
