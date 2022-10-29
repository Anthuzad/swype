.class public final Lcom/facebook/share/model/SharePhotoContent;
.super Lcom/facebook/share/model/ShareContent;
.source "SharePhotoContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/SharePhotoContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/SharePhotoContent;",
        "Lcom/facebook/share/model/SharePhotoContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/SharePhotoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/SharePhotoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 49
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readPhotoListFrom(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/SharePhotoContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/SharePhotoContent$Builder;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 43
    # getter for: Lcom/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;
    invoke-static {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->access$000(Lcom/facebook/share/model/SharePhotoContent$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/SharePhotoContent$Builder;Lcom/facebook/share/model/SharePhotoContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/SharePhotoContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/SharePhotoContent$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhotoContent;-><init>(Lcom/facebook/share/model/SharePhotoContent$Builder;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final getPhotos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->writePhotoListTo(Landroid/os/Parcel;ILjava/util/List;)V

    .line 68
    return-void
.end method
