.class public final enum Lcom/facebook/share/widget/LikeView$Style;
.super Ljava/lang/Enum;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/widget/LikeView$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum BUTTON:Lcom/facebook/share/widget/LikeView$Style;

.field static DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

.field public static final enum STANDARD:Lcom/facebook/share/widget/LikeView$Style;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string/jumbo v1, "STANDARD"

    const-string/jumbo v2, "standard"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    .line 122
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string/jumbo v1, "BUTTON"

    const-string/jumbo v2, "button"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->BUTTON:Lcom/facebook/share/widget/LikeView$Style;

    .line 128
    new-instance v0, Lcom/facebook/share/widget/LikeView$Style;

    const-string/jumbo v1, "BOX_COUNT"

    const-string/jumbo v2, "box_count"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/share/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/share/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BUTTON:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->$VALUES:[Lcom/facebook/share/widget/LikeView$Style;

    .line 130
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    sput-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput-object p3, p0, Lcom/facebook/share/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    .line 146
    iput p4, p0, Lcom/facebook/share/widget/LikeView$Style;->intValue:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/LikeView$Style;)I
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView$Style;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView$Style;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/share/widget/LikeView$Style;
    .registers 6
    .param p0, "enumValue"    # I

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/share/widget/LikeView$Style;->values()[Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v0

    .local v0, "arr$":[Lcom/facebook/share/widget/LikeView$Style;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 134
    .local v3, "style":Lcom/facebook/share/widget/LikeView$Style;
    invoke-direct {v3}, Lcom/facebook/share/widget/LikeView$Style;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 139
    .end local v3    # "style":Lcom/facebook/share/widget/LikeView$Style;
    :goto_10
    return-object v3

    .line 133
    .restart local v3    # "style":Lcom/facebook/share/widget/LikeView$Style;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 139
    .end local v3    # "style":Lcom/facebook/share/widget/LikeView$Style;
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method private getValue()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/facebook/share/widget/LikeView$Style;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/LikeView$Style;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/facebook/share/widget/LikeView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/LikeView$Style;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/widget/LikeView$Style;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->$VALUES:[Lcom/facebook/share/widget/LikeView$Style;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/LikeView$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/LikeView$Style;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    return-object v0
.end method
