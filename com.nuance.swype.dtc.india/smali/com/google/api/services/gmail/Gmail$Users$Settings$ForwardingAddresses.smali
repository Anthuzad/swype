.class public Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;
.super Ljava/lang/Object;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/gmail/Gmail$Users$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForwardingAddresses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$List;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Get;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Delete;,
        Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create;
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;


# direct methods
.method public constructor <init>(Lcom/google/api/services/gmail/Gmail$Users$Settings;)V
    .locals 0

    .prologue
    .line 5799
    iput-object p1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6187
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/gmail/model/ForwardingAddress;)Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5817
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Create;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;Ljava/lang/String;Lcom/google/api/services/gmail/model/ForwardingAddress;)V

    .line 5818
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5819
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5926
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Delete;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;Ljava/lang/String;Ljava/lang/String;)V

    .line 5927
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5928
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6050
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$Get;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;Ljava/lang/String;Ljava/lang/String;)V

    .line 6051
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6052
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6182
    new-instance v0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses$List;-><init>(Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;Ljava/lang/String;)V

    .line 6183
    iget-object v1, p0, Lcom/google/api/services/gmail/Gmail$Users$Settings$ForwardingAddresses;->this$2:Lcom/google/api/services/gmail/Gmail$Users$Settings;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users$Settings;->this$1:Lcom/google/api/services/gmail/Gmail$Users;

    iget-object v1, v1, Lcom/google/api/services/gmail/Gmail$Users;->this$0:Lcom/google/api/services/gmail/Gmail;

    invoke-virtual {v1, v0}, Lcom/google/api/services/gmail/Gmail;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6184
    return-object v0
.end method
