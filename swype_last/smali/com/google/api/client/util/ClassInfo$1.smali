.class final Lcom/google/api/client/util/ClassInfo$1;
.super Ljava/lang/Object;
.source "ClassInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/util/ClassInfo;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ClassInfo;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/api/client/util/ClassInfo$1;->this$0:Lcom/google/api/client/util/ClassInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 165
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .line 1167
    .end local p2    # "x1":Ljava/lang/Object;
    if-ne p1, p2, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, -0x1

    goto :goto_7

    :cond_c
    if-nez p2, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method
