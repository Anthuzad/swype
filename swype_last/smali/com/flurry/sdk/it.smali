.class public final Lcom/flurry/sdk/it;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/flurry/sdk/it;->b:I

    .line 22
    iput-wide p2, p0, Lcom/flurry/sdk/it;->c:J

    .line 23
    iput-object p4, p0, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/flurry/sdk/it;->d:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/flurry/sdk/it;->e:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/flurry/sdk/it;->f:Ljava/lang/Throwable;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v0, 0x0

    .line 41
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_c4
    .catchall {:try_start_2 .. :try_end_c} :catchall_bf

    .line 44
    :try_start_c
    iget v0, p0, Lcom/flurry/sdk/it;->b:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    iget-wide v4, p0, Lcom/flurry/sdk/it;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/it;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/it;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/it;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_b1

    .line 55
    const-string/jumbo v0, "uncaught"

    iget-object v4, p0, Lcom/flurry/sdk/it;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 56
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    :goto_38
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/it;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_53
    if-ge v0, v7, :cond_6d

    aget-object v8, v6, v0

    .line 69
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 58
    :cond_60
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_64} :catch_65
    .catchall {:try_start_c .. :try_end_64} :catchall_ba

    goto :goto_38

    .line 102
    :catch_65
    move-exception v0

    :goto_66
    const/4 v0, 0x0

    :try_start_67
    new-array v0, v0, [B
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_ba

    .line 106
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 109
    :goto_6c
    return-object v0

    .line 73
    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/flurry/sdk/it;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v0, "Caused by: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcom/flurry/sdk/it;->f:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 77
    array-length v7, v6

    move v0, v2

    :goto_8a
    if-ge v0, v7, :cond_97

    aget-object v2, v6, v0

    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 84
    :cond_97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 86
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 96
    :goto_a6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 97
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_ac} :catch_65
    .catchall {:try_start_6d .. :try_end_ac} :catchall_ba

    move-result-object v0

    .line 106
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_6c

    .line 92
    :cond_b1
    const/4 v0, 0x1

    :try_start_b2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_65
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_ba

    goto :goto_a6

    .line 106
    :catchall_ba
    move-exception v0

    :goto_bb
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_bf
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_bb

    .line 102
    :catch_c4
    move-exception v1

    move-object v1, v0

    goto :goto_66
.end method
