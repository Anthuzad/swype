.class final Lcom/flurry/sdk/ii$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ii$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ii$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ii$a;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 163
    iput-object p1, p0, Lcom/flurry/sdk/ii$a$1;->a:Lcom/flurry/sdk/ii$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method
