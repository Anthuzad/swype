.class final Lcom/google/android/voiceime/ImeTrigger$1;
.super Landroid/os/AsyncTask;
.source "ImeTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/ImeTrigger;->startVoiceRecognition(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ImeTrigger;

.field final synthetic val$imiId:Ljava/lang/String;

.field final synthetic val$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ImeTrigger;Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/voiceime/ImeTrigger;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/voiceime/ImeTrigger$1;->this$0:Lcom/google/android/voiceime/ImeTrigger;

    iput-object p2, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$token:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$imiId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 64
    .line 1067
    iget-object v0, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$imiId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/voiceime/ImeTrigger$1;->val$subtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 1068
    const/4 v0, 0x0

    .line 64
    return-object v0
.end method
