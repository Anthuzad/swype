.class public final Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final dc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private de:I

.field private df:I

.field private final dh:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dh:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dd:Ljava/util/List;

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->de:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->df:I

    return-void
.end method

.method private static zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TreeSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " cannot be null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v3, :cond_47

    aget-char v4, v2, v0

    invoke-static {v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc$4868d312(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " must only contain ASCII printable characters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_47
    return-object v1
.end method


# virtual methods
.method public final zzafg()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dh:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string/jumbo v1, "no allowed characters specified"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1a

    :cond_2d
    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->df:I

    if-le v2, v0, :cond_3a

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string/jumbo v1, "required character count cannot be greater than the max password size"

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2000
    :cond_3a
    const/16 v0, 0x5f

    new-array v2, v0, [Z

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v0, v3

    :goto_56
    if-ge v0, v6, :cond_44

    aget-char v7, v5, v0

    add-int/lit8 v8, v7, -0x20

    aget-boolean v8, v2, v8

    if-eqz v8, :cond_83

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " occurs in more than one required character set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    add-int/lit8 v7, v7, -0x20

    aput-boolean v1, v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 0
    :cond_8a
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dh:Ljava/util/TreeSet;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dc:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dd:Ljava/util/List;

    iget v5, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->de:I

    iget v6, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->df:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;II)V

    return-object v0
.end method

.method public final zze$6bc52feb(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    .registers 4

    const-string/jumbo v0, "requiredChars"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dc:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dd:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzfl(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->dh:Ljava/util/TreeSet;

    const-string/jumbo v1, "allowedChars"

    invoke-static {p1, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzw(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final zzj$3e63f106()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    .registers 2

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->de:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->df:I

    return-object p0
.end method