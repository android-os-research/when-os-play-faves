.class final enum Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;
.super Ljava/lang/Enum;
.source "GnssConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/sec/GnssConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GLP_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum BATCHING_STARTED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum BATCHING_STOPPED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_ADDED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_PAUSED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_REMOVED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_RESUMED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum START_NAVIGATING:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum STOP_NAVIGATING:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

.field public static final enum UPDATE_REQUIREMENTS:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 58
    new-instance v0, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v1, "GEOFENCE_ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->GEOFENCE_ADDED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    new-instance v1, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v3, "GEOFENCE_REMOVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->GEOFENCE_REMOVED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    new-instance v3, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v5, "GEOFENCE_PAUSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->GEOFENCE_PAUSED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    new-instance v5, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v7, "GEOFENCE_RESUMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->GEOFENCE_RESUMED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    .line 59
    new-instance v7, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v9, "BATCHING_STARTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->BATCHING_STARTED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    new-instance v9, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v11, "BATCHING_STOPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->BATCHING_STOPPED:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    .line 60
    new-instance v11, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v13, "UPDATE_REQUIREMENTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->UPDATE_REQUIREMENTS:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    new-instance v13, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v15, "START_NAVIGATING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->START_NAVIGATING:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    new-instance v15, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const-string v14, "STOP_NAVIGATING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->STOP_NAVIGATING:Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

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

    .line 57
    sput-object v14, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->$VALUES:[Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;
    .registers 2

    .line 57
    const-class v0, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->$VALUES:[Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    invoke-virtual {v0}, [Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/sec/GnssConstants$GLP_CODE;

    return-object v0
.end method
