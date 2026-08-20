.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;
.super Lcom/android/internal/util/State;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveState"
.end annotation


# instance fields
.field private mIsWatcherActive:Z

.field private mQoSPollCounter:I

.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;


# direct methods
.method public static synthetic $r8$lambda$uzCcolmD4A-l8ROMtobfLOiYOLs(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->lambda$registerBssidWatcherIfNecessary$0()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .registers 2

    .line 1127
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    return-void
.end method

.method private addToRequestList(ZLjava/lang/String;)Z
    .registers 6

    .line 1204
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->isNeverRequested(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 1206
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 1207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1208
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 1211
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "already requested "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.Caster"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getNextUserData()Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1183
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    const/4 v3, 0x0

    .line 1184
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 p0, 0x1

    .line 1185
    aget-object p0, v2, p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method private isFirstRequest()Z
    .registers 4

    .line 1193
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Boolean;

    .line 1194
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_27
    const/4 p0, 0x1

    if-ne v1, p0, :cond_2b

    move v0, p0

    :cond_2b
    return v0
.end method

.method private isNeverRequested(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 1200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$registerBssidWatcherIfNecessary$0()V
    .registers 2

    .line 1136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    return-void
.end method

.method private registerBssidWatcherIfNecessary()V
    .registers 4

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$misIpTimeSecuredAp(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1134
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mIsWatcherActive:Z

    if-nez v0, :cond_31

    .line 1135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->registerBssidListChangedListener(Ljava/lang/String;Lcom/samsung/android/server/wifi/share/ScanMatcherUtil$OnBssidListChangedListener;)V

    const/4 v0, 0x1

    .line 1137
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mIsWatcherActive:Z

    :cond_31
    return-void

    .line 1141
    :cond_32
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mIsWatcherActive:Z

    if-eqz v0, :cond_44

    .line 1142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->unregisterBssidListChangedListener()V

    const/4 v0, 0x0

    .line 1143
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mIsWatcherActive:Z

    :cond_44
    return-void
.end method

.method private setQoSUpdatePoll(Z)V
    .registers 12

    .line 1169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v1, 0x8

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->access$200(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V

    if-eqz p1, :cond_27

    .line 1171
    iget p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mQoSPollCounter:I

    if-nez p1, :cond_15

    .line 1172
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const-wide/16 v2, 0x1f40

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessageDelayed(IJ)V

    goto :goto_21

    .line 1174
    :cond_15
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v8, 0x2dc6c0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessageDelayed(IIIJ)V

    .line 1176
    :goto_21
    iget p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mQoSPollCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mQoSPollCounter:I

    :cond_27
    return-void
.end method

.method private setUserConfirm(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "WifiProfileShare.Caster"

    if-eqz p1, :cond_4d

    .line 1216
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1217
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    if-eqz v1, :cond_38

    const/4 v0, 0x0

    .line 1219
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    .line 1220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->setUserConfirm(ZLjava/lang/String;)V

    goto :goto_66

    .line 1223
    :cond_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "value is null, user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 1226
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " never requested password"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    return-void
.end method

.method private updateWipsNetwork()V
    .registers 3

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWipsNetworkProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWipsNetworkProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->getWipsNetworks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update wips network, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiProfileShare.Caster"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1149
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    const/4 v0, 0x0

    .line 1150
    iput v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mQoSPollCounter:I

    const/4 v0, 0x1

    .line 1151
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->setQoSUpdatePoll(Z)V

    .line 1152
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v2, 0xa

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->access$100(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V

    .line 1153
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$msetMcfServiceForCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Z)V

    .line 1154
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->registerBssidWatcherIfNecessary()V

    return-void
.end method

.method public exit()V
    .registers 4

    .line 1159
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    const/4 v0, 0x0

    .line 1160
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->setQoSUpdatePoll(Z)V

    .line 1161
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mstopShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    .line 1162
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    .line 1163
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fputmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/util/Pair;)V

    .line 1164
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->unregisterBssidListChangedListener()V

    .line 1165
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->mIsWatcherActive:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 1246
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_133

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_124

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-eq v0, v2, :cond_115

    const/4 v5, 0x4

    if-eq v0, v5, :cond_ef

    if-eq v0, v3, :cond_ee

    const/4 v3, 0x7

    if-eq v0, v3, :cond_133

    const/16 v3, 0x8

    if-eq v0, v3, :cond_df

    const/16 v3, 0x9

    if-eq v0, v3, :cond_9a

    const/16 v3, 0x15

    if-eq v0, v3, :cond_50

    const/16 p1, 0x16

    if-eq v0, p1, :cond_ee

    packed-switch v0, :pswitch_data_17e

    goto/16 :goto_17c

    .line 1261
    :pswitch_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mstopShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    goto/16 :goto_17c

    .line 1276
    :pswitch_31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->checkAndUpdatePasswordData(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    .line 1277
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->unregisterBssidListChangedListener()V

    goto/16 :goto_17c

    .line 1284
    :cond_50
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_56

    move v0, v1

    goto :goto_57

    :cond_56
    move v0, v4

    .line 1285
    :goto_57
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1286
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->isNeverRequested(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1287
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->addToRequestList(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17c

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->isFirstRequest()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 1288
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v3, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_17c

    .line 1291
    :cond_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already requested password from user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", replying reject message"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiProfileShare.Caster"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->setUserConfirm(Ljava/lang/String;Z)V

    goto/16 :goto_17c

    .line 1252
    :cond_9a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_17c

    .line 1253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17c

    .line 1254
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object v2

    .line 1256
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v3

    .line 1257
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPassword()Ljava/lang/String;

    move-result-object p1

    .line 1255
    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getMcfDataListForSharingPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    move-result-object p0

    .line 1254
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->checkAndUpdatePasswordData(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    goto/16 :goto_17c

    .line 1280
    :cond_df
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_e6

    move v4, v1

    :cond_e6
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mupdateQoSDataPoll(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V

    .line 1281
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->setQoSUpdatePoll(Z)V

    goto/16 :goto_17c

    :cond_ee
    :pswitch_ee
    return v4

    .line 1304
    :cond_ef
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1305
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_f8

    move v4, v1

    :cond_f8
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->setUserConfirm(Ljava/lang/String;Z)V

    .line 1307
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->getNextUserData()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_17c

    .line 1309
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v3, 0x3

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessageDelayed(IIILjava/lang/Object;J)V

    goto :goto_17c

    .line 1298
    :cond_115
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_11a

    move v4, v1

    .line 1299
    :cond_11a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0, v1, v4, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mstartActivityForUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZZLjava/lang/String;)V

    goto :goto_17c

    .line 1248
    :cond_124
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    .line 1249
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_17c

    .line 1265
    :cond_133
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->updateWipsNetwork()V

    .line 1266
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mcheckAndGetShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fputmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/util/Pair;)V

    .line 1267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_151

    .line 1268
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_17c

    .line 1270
    :cond_151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$mupdateQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 1271
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->checkAndUpdatePasswordData(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V

    .line 1272
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;->registerBssidWatcherIfNecessary()V

    :cond_17c
    :goto_17c
    return v1

    nop

    :pswitch_data_17e
    .packed-switch 0xb
        :pswitch_ee
        :pswitch_31
        :pswitch_2a
        :pswitch_ee
    .end packed-switch
.end method
