.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverFastDrainAction"
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field public gpsCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

.field public mContext:Landroid/content/Context;

.field public mobiledataCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public wifiCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/content/Context;)V
    .registers 4

    .line 1153
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IntelligentBatterySaverFastDrainAction"

    .line 1151
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->TAG:Ljava/lang/String;

    .line 1154
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mContext:Landroid/content/Context;

    .line 1155
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->gpsCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 1192
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;

    invoke-direct {p2, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$2;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->wifiCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 1230
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;

    invoke-direct {p2, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mobiledataCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    return-void
.end method


# virtual methods
.method public regisiterAction()V
    .registers 5

    .line 1274
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->gpsCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    const-string v2, "GPS_IBSFastDrainAction"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V

    .line 1275
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->wifiCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    const-string/jumbo v2, "wifi_IBSFastDrainAction"

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->mobiledataCallBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    const-string/jumbo v1, "mobiledata_IBSFastDrainAction"

    invoke-static {v0, v1, p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V

    return-void
.end method
