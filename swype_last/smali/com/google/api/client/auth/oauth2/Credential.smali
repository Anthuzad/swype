.class public Lcom/google/api/client/auth/oauth2/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/Credential$Builder;,
        Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private accessToken:Ljava/lang/String;

.field public final clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field public final clock:Lcom/google/api/client/util/Clock;

.field private expirationTimeMilliseconds:Ljava/lang/Long;

.field public final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private final refreshListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;

.field private final requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field public final tokenServerEncodedUrl:Ljava/lang/String;

.field public final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const-class v0, Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/Credential;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    .line 187
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 1127
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 188
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 189
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 190
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    :goto_21
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 192
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 193
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->refreshListeners:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    .line 194
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->clock:Lcom/google/api/client/util/Clock;

    .line 2127
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    .line 195
    return-void

    .line 190
    :cond_3e
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method private getExpiresInSeconds()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_5
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_2a

    if-nez v0, :cond_10

    .line 432
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 430
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_2a

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_f

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private refreshToken()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 486
    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 489
    :try_start_7
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v3

    .line 490
    .local v3, "tokenResponse":Lcom/google/api/client/auth/oauth2/TokenResponse;
    if-eqz v3, :cond_62

    .line 491
    invoke-virtual {p0, v3}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 492
    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1f
    .catch Lcom/google/api/client/auth/oauth2/TokenResponseException; {:try_start_7 .. :try_end_1f} :catch_20
    .catchall {:try_start_7 .. :try_end_1f} :catchall_50

    goto :goto_16

    .line 497
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "tokenResponse":Lcom/google/api/client/auth/oauth2/TokenResponse;
    :catch_20
    move-exception v0

    .line 498
    .local v0, "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    const/16 v6, 0x190

    :try_start_23
    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getStatusCode()I

    move-result v7

    if-gt v6, v7, :cond_5d

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_5d

    move v2, v4

    .line 3061
    .local v2, "statusCode4xx":Z
    :goto_32
    iget-object v4, v0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 500
    if-eqz v4, :cond_40

    if-eqz v2, :cond_40

    .line 503
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 504
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 506
    :cond_40
    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_50

    goto :goto_46

    .line 515
    .end local v0    # "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "statusCode4xx":Z
    :catchall_50
    move-exception v4

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "tokenResponse":Lcom/google/api/client/auth/oauth2/TokenResponse;
    :cond_57
    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "tokenResponse":Lcom/google/api/client/auth/oauth2/TokenResponse;
    :goto_5c
    return v4

    .restart local v0    # "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    :cond_5d
    move v2, v5

    .line 498
    goto :goto_32

    .line 509
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "statusCode4xx":Z
    :cond_5f
    if-eqz v2, :cond_62

    .line 510
    :try_start_61
    throw v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_50

    .line 515
    .end local v0    # "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "statusCode4xx":Z
    :cond_62
    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v4, v5

    goto :goto_5c
.end method


# virtual methods
.method public executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 568
    const/4 v0, 0x0

    .line 570
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    goto :goto_5
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .registers 14
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p3, "supportsRetry"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 242
    const/4 v5, 0x0

    .line 243
    .local v5, "refreshToken":Z
    const/4 v2, 0x0

    .line 245
    .local v2, "bearer":Z
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/client/http/HttpHeaders;->getAuthenticateAsList()Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, "authenticateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_32

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    .local v0, "authenticate":Ljava/lang/String;
    const-string/jumbo v8, "Bearer "

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 255
    const/4 v2, 0x1

    .line 256
    sget-object v8, Lcom/google/api/client/auth/oauth2/BearerToken;->INVALID_TOKEN_ERROR:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 263
    .end local v0    # "authenticate":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_32
    if-nez v2, :cond_3d

    .line 264
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v8

    const/16 v9, 0x191

    if-ne v8, v9, :cond_5e

    move v5, v6

    .line 267
    :cond_3d
    :goto_3d
    if-eqz v5, :cond_74

    .line 269
    :try_start_3f
    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_69

    .line 272
    :try_start_44
    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-interface {v9, p1}, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;->getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/api/client/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_62

    move-result v8

    if-eqz v8, :cond_60

    .line 275
    :cond_58
    :goto_58
    :try_start_58
    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 281
    :goto_5d
    return v6

    :cond_5e
    move v5, v7

    .line 264
    goto :goto_3d

    :cond_60
    move v6, v7

    .line 272
    goto :goto_58

    .line 275
    :catchall_62
    move-exception v6

    iget-object v8, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_69} :catch_69

    .line 277
    :catch_69
    move-exception v3

    .line 278
    .local v3, "exception":Ljava/io/IOException;
    sget-object v6, Lcom/google/api/client/auth/oauth2/Credential;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v9, "unable to refresh token"

    invoke-virtual {v6, v8, v9, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "exception":Ljava/io/IOException;
    :cond_74
    move v6, v7

    .line 281
    goto :goto_5d
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .registers 2
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 286
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 287
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .registers 8
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    :try_start_5
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v0

    .line 216
    .local v0, "expiresIn":Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    cmp-long v1, v2, v4

    if-gtz v1, :cond_26

    .line 217
    :cond_19
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z

    .line 218
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_33

    if-nez v1, :cond_26

    .line 225
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    :goto_25
    return-void

    .line 223
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;->intercept(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_33

    .line 225
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_25

    .end local v0    # "expiresIn":Ljava/lang/Long;
    :catchall_33
    move-exception v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 4
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 312
    :try_start_5
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 314
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 316
    return-object p0

    .line 314
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 4
    .param p1, "expirationTimeMilliseconds"    # Ljava/lang/Long;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 413
    :try_start_5
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 415
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 417
    return-object p0

    .line 415
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 8
    .param p1, "expiresIn"    # Ljava/lang/Long;

    .prologue
    .line 449
    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v0}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 3
    .param p1, "tokenResponse"    # Lcom/google/api/client/auth/oauth2/TokenResponse;

    .prologue
    .line 536
    .line 3069
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/TokenResponse;->accessToken:Ljava/lang/String;

    .line 536
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 3134
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/TokenResponse;->refreshToken:Ljava/lang/String;

    .line 539
    if-eqz v0, :cond_e

    .line 4134
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/TokenResponse;->refreshToken:Ljava/lang/String;

    .line 540
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 5112
    :cond_e
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/TokenResponse;->expiresInSeconds:Ljava/lang/Long;

    .line 542
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 543
    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .registers 4
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 379
    if-eqz p1, :cond_1e

    .line 380
    :try_start_7
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_18
    const-string/jumbo v1, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 385
    :cond_1e
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_28

    .line 387
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    return-object p0

    .line 380
    :cond_26
    const/4 v0, 0x0

    goto :goto_18

    .line 387
    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
