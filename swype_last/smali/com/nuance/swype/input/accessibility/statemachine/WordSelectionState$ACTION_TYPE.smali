.class final enum Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;
.super Ljava/lang/Enum;
.source "WordSelectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ACTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

.field public static final enum CANCEL:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

.field public static final enum DEFAULT_SELECTION:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

.field public static final enum SCRUB_GESTURE:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->CANCEL:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    const-string/jumbo v1, "DEFAULT_SELECTION"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->DEFAULT_SELECTION:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    const-string/jumbo v1, "SCRUB_GESTURE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->SCRUB_GESTURE:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->CANCEL:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->DEFAULT_SELECTION:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->SCRUB_GESTURE:Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->$VALUES:[Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->$VALUES:[Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    invoke-virtual {v0}, [Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/input/accessibility/statemachine/WordSelectionState$ACTION_TYPE;

    return-object v0
.end method
