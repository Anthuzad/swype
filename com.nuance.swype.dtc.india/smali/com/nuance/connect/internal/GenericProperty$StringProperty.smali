.class public Lcom/nuance/connect/internal/GenericProperty$StringProperty;
.super Lcom/nuance/connect/internal/GenericProperty;

# interfaces
.implements Lcom/nuance/connect/internal/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringProperty"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/connect/internal/GenericProperty;",
        "Lcom/nuance/connect/internal/Property",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private overrideFlags:I

.field private source:Lcom/nuance/connect/internal/Property$Source;

.field private store:Lcom/nuance/connect/store/PersistentDataStore;

.field private value:Ljava/lang/String;

.field private verification:I

.field private verifier:Lcom/nuance/connect/internal/Property$Verifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->reference:Lcom/nuance/connect/internal/Property;

    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->reference:Lcom/nuance/connect/internal/Property;

    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->loadValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/connect/store/PersistentDataStore;IILcom/nuance/connect/internal/Property$Verifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/store/PersistentDataStore;",
            "II",
            "Lcom/nuance/connect/internal/Property$Verifier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;

    invoke-direct {v0}, Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    iput-object p0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->reference:Lcom/nuance/connect/internal/Property;

    iput-object p3, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    iput p5, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    :cond_0
    sget-object v0, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0, p2, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->loadValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method private allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/internal/Property$Source;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->CONNECT_DAT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/Property$Source;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->SERVER:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/Property$Source;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    :cond_3
    sget-object v2, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, p1}, Lcom/nuance/connect/internal/Property$Source;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    sget-object v3, Lcom/nuance/connect/internal/Property$Source;->DEFAULT:Lcom/nuance/connect/internal/Property$Source;

    invoke-virtual {v2, v3}, Lcom/nuance/connect/internal/Property$Source;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nuance/connect/internal/Property",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lcom/nuance/connect/internal/Property;->getTypeArgument()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lcom/nuance/connect/internal/Property;->setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid argument supplied for Property<String>.set() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;->getSource()Lcom/nuance/connect/internal/Property$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->save()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property$ValueListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    new-instance v0, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty$SimpleStringProperty;-><init>(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V

    return-void
.end method

.method public addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->listeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/nuance/connect/internal/Property$ValueListener;->onValueChanged(Lcom/nuance/connect/internal/Property;)V

    :cond_0
    return-void
.end method

.method public addListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideFlags()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    return v0
.end method

.method public getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    return-object v0
.end method

.method public getTypeArgument()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVerification()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verification:I

    return v0
.end method

.method public set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->reference:Lcom/nuance/connect/internal/Property;

    invoke-static {v0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->helper(Lcom/nuance/connect/internal/Property;Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setOverrideFlags(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->overrideFlags:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->setValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->allowOverride(Lcom/nuance/connect/internal/Property$Source;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->source:Lcom/nuance/connect/internal/Property$Source;

    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->save()V

    invoke-direct {p0}, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->notifyListeners()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$StringProperty;->verifier:Lcom/nuance/connect/internal/Property$Verifier;

    invoke-interface {v0, p1, p2, p0}, Lcom/nuance/connect/internal/Property$Verifier;->verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
