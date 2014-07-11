.class public Lcom/lewa/PIM/common/indexbar/AlphaAdapter;
.super Landroid/widget/SimpleAdapter;
.source "AlphaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/PIM/common/indexbar/AlphaAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private alphalist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private b:I

.field private context:Landroid/content/Context;

.field public displayCount:I

.field private mHeadColor:I

.field private mTextColorPrimary:I

.field private namesBtnBkgColor:I

.field private namesBtnTxtColor:I

.field public pageIndex:I

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[II)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 24
    const/4 v2, 0x0

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->pageIndex:I

    .line 26
    const/4 v2, -0x1

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->selectedPosition:I

    .line 37
    iput-object p1, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->context:Landroid/content/Context;

    .line 38
    iput p6, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->pageIndex:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->mTextColorPrimary:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->mHeadColor:I

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->displayCount:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->namesBtnBkgColor:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->namesBtnTxtColor:I

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 48
    .local v1, "iMax":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->alphalist:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_53
    if-ge v0, v1, :cond_61

    .line 51
    iget-object v2, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->alphalist:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 54
    :cond_61
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->alphalist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->alphalist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, "button":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "Button"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "strIndex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x410

    if-lt v3, v4, :cond_31

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x42f

    if-le v3, v4, :cond_41

    :cond_31
    const/16 v3, 0x23

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_41

    const/16 v3, 0x2605

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_4d

    .line 86
    :cond_41
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->namesBtnTxtColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :goto_46
    const v3, 0x7f020020

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    return-object v2

    .line 88
    :cond_4d
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    iget v3, p0, Lcom/lewa/PIM/common/indexbar/AlphaAdapter;->mTextColorPrimary:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_46
.end method
