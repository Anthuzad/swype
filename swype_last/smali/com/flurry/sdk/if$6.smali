.class final Lcom/flurry/sdk/if$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka",
        "<",
        "Lcom/flurry/sdk/jj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/if;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/if;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flurry/sdk/if$6;->a:Lcom/flurry/sdk/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/jz;)V
    .registers 3

    .prologue
    .line 146
    check-cast p1, Lcom/flurry/sdk/jj;

    .line 1149
    iget-boolean v0, p1, Lcom/flurry/sdk/jj;->a:Z

    if-eqz v0, :cond_b

    .line 1150
    iget-object v0, p0, Lcom/flurry/sdk/if$6;->a:Lcom/flurry/sdk/if;

    invoke-static {v0}, Lcom/flurry/sdk/if;->a(Lcom/flurry/sdk/if;)V

    .line 146
    :cond_b
    return-void
.end method
