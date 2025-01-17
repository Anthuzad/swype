.class final Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;
.super Ljava/lang/Object;
.source "SpeechErrorImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/SpeechError;


# instance fields
.field private final _errorCode:I

.field private final _errorDetail:Ljava/lang/String;

.field private final _suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorDetail"    # Ljava/lang/String;
    .param p3, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->_errorCode:I

    .line 12
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->_suggestion:Ljava/lang/String;

    .line 13
    if-nez p2, :cond_d

    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->getDefaultErrorText(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "errorDetail":Ljava/lang/String;
    :cond_d
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->_errorDetail:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private static getDefaultErrorText(I)Ljava/lang/String;
    .registers 2
    .param p0, "errorCode"    # I

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_14

    .line 47
    :pswitch_3
    const-string/jumbo v0, "An error occurred."

    :goto_6
    return-object v0

    .line 38
    :pswitch_7
    const-string/jumbo v0, "Failed to connect to speech server."

    goto :goto_6

    .line 40
    :pswitch_b
    const-string/jumbo v0, "Please retry your query."

    goto :goto_6

    .line 42
    :pswitch_f
    const-string/jumbo v0, "Query cancelled."

    goto :goto_6

    .line 35
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->_errorCode:I

    return v0
.end method

.method public final getErrorDetail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->_errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuggestion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechErrorImpl;->_suggestion:Ljava/lang/String;

    return-object v0
.end method
