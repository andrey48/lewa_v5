.class public final Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;
    }
.end annotation


# static fields
.field public static final ALPHABET_2_DIGIT_TBL:[C

.field private static final IP_PREFIX:[Ljava/lang/String;

.field private static ToDigit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_40

    sput-object v0, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->ALPHABET_2_DIGIT_TBL:[C

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "11808"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "10193"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "17909"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "17908"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "96688"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->IP_PREFIX:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->ToDigit:Ljava/util/HashMap;

    return-void

    .line 26
    nop

    :array_40
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2Digit(C)C
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 67
    const/16 v0, 0x430

    if-lt p0, v0, :cond_f

    const/16 v0, 0x44f

    if-gt p0, v0, :cond_f

    .line 68
    sget-object v0, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->ALPHABET_2_DIGIT_TBL:[C

    add-int/lit8 v1, p0, -0x61

    aget-char p0, v0, v1

    .line 74
    .end local p0    # "c":C
    :cond_e
    :goto_e
    return p0

    .line 70
    .restart local p0    # "c":C
    :cond_f
    const/16 v0, 0x410

    if-lt p0, v0, :cond_e

    const/16 v0, 0x42f

    if-gt p0, v0, :cond_e

    .line 71
    sget-object v0, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->ALPHABET_2_DIGIT_TBL:[C

    add-int/lit8 v1, p0, -0x41

    aget-char p0, v0, v1

    goto :goto_e
.end method

.method public static convert2Digit([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "astrSrc"    # [Ljava/lang/String;

    .prologue
    .line 79
    array-length v6, p0

    new-array v0, v6, [Ljava/lang/String;

    .line 80
    .local v0, "astrDigit":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v6, p0

    if-ge v1, v6, :cond_47

    .line 81
    sget-object v6, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->ToDigit:Ljava/util/HashMap;

    aget-object v7, p0, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 82
    .local v5, "tempString":Ljava/lang/String;
    if-nez v5, :cond_42

    .line 83
    aget-object v6, p0, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 84
    .local v3, "nLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v6, p0, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_21
    if-ge v2, v3, :cond_33

    .line 86
    aget-object v6, p0, v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->convert2Digit(C)C

    move-result v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 89
    :cond_33
    sget-object v6, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->ToDigit:Ljava/util/HashMap;

    aget-object v7, p0, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .end local v2    # "j":I
    .end local v3    # "nLen":I
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_42
    aput-object v5, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 94
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_47
    return-object v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "emergencyNumbers"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 301
    if-nez p1, :cond_26

    .line 302
    const-string v3, "112"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "911"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "110"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "120"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    move v1, v2

    .line 311
    :cond_25
    :goto_25
    return v1

    .line 305
    :cond_26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    array-length v3, p1

    if-ge v0, v3, :cond_37

    .line 306
    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_34

    move v1, v2

    .line 307
    goto :goto_25

    .line 305
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 311
    :cond_37
    const-string v3, "112"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "911"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "110"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "120"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_57
    move v1, v2

    goto :goto_25
.end method

.method public static final isStartWithIpPrefix(Ljava/lang/String;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->IP_PREFIX:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 45
    sget-object v1, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->IP_PREFIX:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 46
    const/4 v1, 0x1

    .line 49
    :goto_11
    return v1

    .line 44
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static final numberArrayToInClauseString(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "chinaCallCode"    # Ljava/lang/String;
    .param p2, "ipPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "numberArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x7

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 317
    .local v1, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 318
    .local v0, "callCodeLen":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_13c

    .line 321
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "number":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 322
    .restart local v4    # "number":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_60
    :goto_60
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v1, :cond_69

    .line 333
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 327
    :cond_6c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_60

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 338
    .end local v2    # "i":I
    :cond_93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 339
    .local v3, "ipPrefixLen":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_98
    if-ge v2, v1, :cond_13c

    .line 340
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "number":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 341
    .restart local v4    # "number":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_e2
    :goto_e2
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v1, :cond_eb

    .line 357
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 346
    :cond_ee
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 350
    :cond_115
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_e2

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e2

    .line 361
    .end local v3    # "ipPrefixLen":I
    :cond_13c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static searchApproximateString(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;
    .registers 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    .line 98
    const/4 v0, -0x1

    .line 99
    .local v0, "nIndex":I
    const/4 v2, 0x0

    .line 100
    .local v2, "nKeyPos":I
    const/4 v3, -0x1

    .line 101
    .local v3, "pos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 103
    .local v1, "nKeyLen":I
    :cond_8
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 104
    if-ne v3, v6, :cond_17

    if-eq v6, v0, :cond_17

    .line 105
    move v3, v0

    .line 107
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 108
    if-eq v6, v0, :cond_1d

    if-lt v2, v1, :cond_8

    .line 110
    :cond_1d
    if-eq v6, v0, :cond_2b

    if-ne v2, v1, :cond_2b

    .line 111
    new-instance v4, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;-><init>(Ljava/lang/String;I)V

    .line 115
    :goto_2a
    return-object v4

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method public static searchNumericString(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;
    .registers 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "digits"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 121
    .local v3, "nKeyLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    .local v2, "nContentLen":I
    if-ge v2, v3, :cond_c

    .line 139
    :cond_b
    :goto_b
    return-object v5

    .line 127
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "digitContent":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_22

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->convert2Digit(C)C

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 132
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, "nMatchPos":I
    const/4 v6, -0x1

    if-eq v6, v4, :cond_b

    .line 136
    new-instance v5, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;

    add-int v6, v4, v3

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;-><init>(Ljava/lang/String;I)V

    goto :goto_b
.end method

.method public static searchNumericString([Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;
    .registers 15
    .param p0, "astrContent"    # [Ljava/lang/String;
    .param p1, "digits"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, "nKeyPos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 167
    .local v4, "nKeyLen":I
    const/4 v6, 0x0

    .line 169
    .local v6, "nextChar":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v2, "matchContent":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util;->convert2Digit([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "astrDigit":[Ljava/lang/String;
    array-length v10, v0

    if-lt v10, v4, :cond_6a

    .line 173
    const/4 v7, -0x1

    .line 174
    .local v7, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v10, p0

    if-ge v1, v10, :cond_56

    if-ge v5, v4, :cond_56

    .line 175
    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_24

    .line 174
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 179
    :cond_24
    aget-object v10, v0, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_21

    .line 180
    add-int/lit8 v10, v1, 0x1

    array-length v11, p0

    if-ge v10, v11, :cond_45

    .line 181
    add-int/lit8 v10, v1, 0x1

    aget-object v10, p0, v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 182
    const/16 v10, 0x80

    if-le v6, v10, :cond_45

    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 192
    :cond_45
    const/4 v10, -0x1

    if-ne v7, v10, :cond_49

    .line 193
    move v7, v1

    .line 195
    :cond_49
    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 200
    :cond_56
    if-ne v5, v4, :cond_62

    .line 201
    new-instance v10, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;-><init>(Ljava/lang/String;I)V

    .line 297
    :goto_61
    return-object v10

    .line 204
    :cond_62
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 208
    .end local v1    # "i":I
    .end local v7    # "pos":I
    :cond_6a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, "strOrigDigit":Ljava/lang/String;
    move-object v9, v8

    .line 210
    .local v9, "strRemainDigit":Ljava/lang/String;
    const/4 v3, 0x0

    .line 211
    .local v3, "matchPinyin":Z
    const/4 v7, -0x1

    .line 212
    .restart local v7    # "pos":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_72
    array-length v10, p0

    if-ge v1, v10, :cond_143

    .line 213
    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_80

    .line 212
    :cond_7d
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 217
    :cond_80
    const/4 v3, 0x0

    .line 218
    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 219
    add-int/lit8 v10, v1, 0x1

    array-length v11, p0

    if-ge v10, v11, :cond_c7

    .line 220
    add-int/lit8 v10, v1, 0x1

    aget-object v10, p0, v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 221
    const/16 v10, 0x80

    if-le v6, v10, :cond_9c

    .line 226
    const/4 v3, 0x1

    .line 231
    :cond_9c
    if-eqz v3, :cond_b8

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    const/4 v10, -0x1

    if-ne v7, v10, :cond_ae

    .line 235
    move v7, v1

    .line 251
    :cond_ae
    :goto_ae
    new-instance v10, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v7}, Lcom/lewa/PIM/mediatek/contacts/dialpad/Util$MatchKey;-><init>(Ljava/lang/String;I)V

    goto :goto_61

    .line 239
    :cond_b8
    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 240
    const/4 v10, -0x1

    if-ne v7, v10, :cond_ae

    .line 241
    move v7, v1

    goto :goto_ae

    .line 246
    :cond_c7
    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 247
    const/4 v10, -0x1

    if-ne v7, v10, :cond_ae

    .line 248
    move v7, v1

    goto :goto_ae

    .line 254
    :cond_d6
    aget-object v10, v0, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_137

    .line 255
    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 256
    add-int/lit8 v10, v1, 0x1

    array-length v11, p0

    if-ge v10, v11, :cond_125

    .line 257
    add-int/lit8 v10, v1, 0x1

    aget-object v10, p0, v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 258
    const/16 v10, 0x80

    if-le v6, v10, :cond_ff

    .line 263
    const/4 v3, 0x1

    .line 268
    :cond_ff
    if-eqz v3, :cond_113

    .line 269
    add-int/lit8 v1, v1, 0x1

    .line 270
    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const/4 v10, -0x1

    if-ne v7, v10, :cond_7d

    .line 272
    move v7, v1

    goto/16 :goto_7d

    .line 276
    :cond_113
    aget-object v10, p0, v1

    const/4 v11, 0x0

    aget-object v12, p0, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 277
    const/4 v10, -0x1

    if-ne v7, v10, :cond_7d

    .line 278
    move v7, v1

    goto/16 :goto_7d

    .line 283
    :cond_125
    aget-object v10, p0, v1

    const/4 v11, 0x0

    aget-object v12, p0, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v10, v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 284
    const/4 v10, -0x1

    if-ne v7, v10, :cond_7d

    .line 285
    move v7, v1

    goto/16 :goto_7d

    .line 290
    :cond_137
    move-object v9, v8

    .line 291
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 292
    const/4 v7, -0x1

    goto/16 :goto_7d

    .line 297
    :cond_143
    const/4 v10, 0x0

    goto/16 :goto_61
.end method
