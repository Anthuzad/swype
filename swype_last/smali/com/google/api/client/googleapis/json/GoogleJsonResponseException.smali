.class public final Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "GoogleJsonResponseException.java"


# instance fields
.field private final transient details:Lcom/google/api/client/googleapis/json/GoogleJsonError;


# direct methods
.method private constructor <init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/googleapis/json/GoogleJsonError;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/api/client/http/HttpResponseException$Builder;
    .param p2, "details"    # Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    .line 69
    iput-object p2, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 70
    return-void
.end method

.method public static from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .registers 12
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 94
    new-instance v1, Lcom/google/api/client/http/HttpResponseException$Builder;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Lcom/google/api/client/http/HttpResponseException$Builder;-><init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V

    .line 1127
    .local v1, "builder":Lcom/google/api/client/http/HttpResponseException$Builder;
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "details":Lcom/google/api/client/googleapis/json/GoogleJsonError;
    const/4 v3, 0x0

    .line 101
    .local v3, "detailString":Ljava/lang/String;
    :try_start_16
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v7

    if-nez v7, :cond_b0

    const-string/jumbo v7, "application/json; charset=UTF-8"

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2c} :catch_8e

    move-result-object v7

    if-eqz v7, :cond_b0

    .line 104
    const/4 v6, 0x0

    .line 106
    .local v6, "parser":Lcom/google/api/client/json/JsonParser;
    :try_start_30
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    .line 109
    .local v2, "currentToken":Lcom/google/api/client/json/JsonToken;
    if-nez v2, :cond_42

    .line 110
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    .line 113
    :cond_42
    if-eqz v2, :cond_60

    .line 115
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v7, v8, :cond_60

    .line 117
    const-class v7, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    invoke-virtual {v6, v7}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-object v4, v0

    .line 118
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->toPrettyString()Ljava/lang/String;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_5f} :catch_93
    .catchall {:try_start_30 .. :try_end_5f} :catchall_a3

    move-result-object v3

    .line 125
    :cond_60
    if-nez v6, :cond_88

    .line 126
    :try_start_62
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_8e

    .line 139
    .end local v2    # "currentToken":Lcom/google/api/client/json/JsonToken;
    .end local v6    # "parser":Lcom/google/api/client/json/JsonParser;
    :cond_65
    :goto_65
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 140
    .local v5, "message":Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 141
    sget-object v7, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpResponseException$Builder;->setContent(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 144
    :cond_7b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/api/client/http/HttpResponseException$Builder;->setMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 146
    new-instance v7, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-direct {v7, v1, v4}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/googleapis/json/GoogleJsonError;)V

    return-object v7

    .line 127
    .end local v5    # "message":Ljava/lang/StringBuilder;
    .restart local v2    # "currentToken":Lcom/google/api/client/json/JsonToken;
    .restart local v6    # "parser":Lcom/google/api/client/json/JsonParser;
    :cond_88
    if-nez v4, :cond_65

    .line 128
    :try_start_8a
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_65

    .line 136
    .end local v2    # "currentToken":Lcom/google/api/client/json/JsonToken;
    .end local v6    # "parser":Lcom/google/api/client/json/JsonParser;
    :catch_8e
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 123
    .restart local v6    # "parser":Lcom/google/api/client/json/JsonParser;
    :catch_93
    move-exception v7

    :try_start_94
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_a3

    .line 125
    if-nez v6, :cond_9d

    .line 126
    :try_start_99
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    goto :goto_65

    .line 127
    :cond_9d
    if-nez v4, :cond_65

    .line 128
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->close()V

    goto :goto_65

    .line 125
    :catchall_a3
    move-exception v7

    if-nez v6, :cond_aa

    .line 126
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 128
    :cond_a9
    :goto_a9
    throw v7

    .line 127
    :cond_aa
    if-nez v4, :cond_a9

    .line 128
    invoke-virtual {v6}, Lcom/google/api/client/json/JsonParser;->close()V

    goto :goto_a9

    .line 132
    .end local v6    # "parser":Lcom/google/api/client/json/JsonParser;
    :cond_b0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b3} :catch_8e

    move-result-object v3

    goto :goto_65
.end method
