.class public final enum Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
.super Ljava/lang/Enum;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum ACTIVE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum ALERTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum DIALING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum DISCONNECTED:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum DISCONNECTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum HOLDING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum INCOMING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

.field public static final enum WAITING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1661
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->IDLE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1665
    new-instance v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v3, "ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->ACTIVE:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1669
    new-instance v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v5, "HOLDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->HOLDING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1673
    new-instance v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v7, "DIALING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DIALING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1677
    new-instance v7, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v9, "ALERTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->ALERTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1681
    new-instance v9, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v11, "INCOMING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->INCOMING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1685
    new-instance v11, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v13, "WAITING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->WAITING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1689
    new-instance v13, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v15, "DISCONNECTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DISCONNECTED:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1693
    new-instance v15, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    const-string v14, "DISCONNECTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->DISCONNECTING:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    .line 1657
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->$VALUES:[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1657
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1657
    const-class v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;
    .registers 1

    .line 1657
    sget-object v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->$VALUES:[Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    invoke-virtual {v0}, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$CallState;

    return-object v0
.end method
