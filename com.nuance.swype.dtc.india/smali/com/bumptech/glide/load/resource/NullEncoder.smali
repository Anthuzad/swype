.class public final Lcom/bumptech/glide/load/resource/NullEncoder;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullEncoder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/bumptech/glide/load/resource/NullEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/NullEncoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/bumptech/glide/load/resource/NullEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullEncoder;

    return-object v0
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/load/resource/NullEncoder;, "Lcom/bumptech/glide/load/resource/NullEncoder<TT;>;"
    const-string/jumbo v0, ""

    return-object v0
.end method
