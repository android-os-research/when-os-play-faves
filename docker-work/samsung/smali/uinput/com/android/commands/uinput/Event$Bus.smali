.class final enum Lcom/android/commands/uinput/Event$Bus;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Bus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/commands/uinput/Event$Bus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/uinput/Event$Bus;

.field public static final enum BLUETOOTH:Lcom/android/commands/uinput/Event$Bus;

.field public static final enum USB:Lcom/android/commands/uinput/Event$Bus;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 45
    new-instance v0, Lcom/android/commands/uinput/Event$Bus;

    const-string v1, "USB"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/uinput/Event$Bus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$Bus;->USB:Lcom/android/commands/uinput/Event$Bus;

    new-instance v1, Lcom/android/commands/uinput/Event$Bus;

    const-string v3, "BLUETOOTH"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/android/commands/uinput/Event$Bus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/commands/uinput/Event$Bus;->BLUETOOTH:Lcom/android/commands/uinput/Event$Bus;

    .line 44
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/commands/uinput/Event$Bus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/commands/uinput/Event$Bus;->$VALUES:[Lcom/android/commands/uinput/Event$Bus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/android/commands/uinput/Event$Bus;->mValue:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/uinput/Event$Bus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/android/commands/uinput/Event$Bus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/commands/uinput/Event$Bus;

    return-object v0
.end method

.method public static values()[Lcom/android/commands/uinput/Event$Bus;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/commands/uinput/Event$Bus;->$VALUES:[Lcom/android/commands/uinput/Event$Bus;

    invoke-virtual {v0}, [Lcom/android/commands/uinput/Event$Bus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/commands/uinput/Event$Bus;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/commands/uinput/Event$Bus;->mValue:I

    return v0
.end method
