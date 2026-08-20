.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiP2pGoPowerSave.java"


# static fields
.field private static final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String; = "com.samsung.intent.action.CHECK_SIOP_LEVEL"

.field private static final ACTION_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

.field private static final P2P_GOPS_EVENT_PATTERN:Ljava/lang/String; = "P2P_GOPS_EVENT method=NOA([0-4])OPS[0-9]P[0-4C], noa_dur=([0-9]+),.*"

.field private static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pGoPowerSave"

.field private static intentValue:I

.field private static mDurationForNoa:I

.field private static mStartTimeForNoa:J

.field private static mWorkingTimeForNoa:J

.field private static numofclients:I


# instance fields
.field private chkWfdStatus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

.field private siopLevel:I


# direct methods
.method public static synthetic $r8$lambda$hl7lcSj-uZnqA89mjbgJS6G8G9U(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->handleScreenState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x3

    .line 55
    iput v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    const-string v0, "disconnected"

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    return-void
.end method

.method private checkTimeNoa(II)J
    .registers 11

    const-wide/16 v0, 0x64

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_5b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5b

    const/4 p0, 0x4

    if-eq p1, p0, :cond_5b

    const/4 p0, 0x5

    if-eq p1, p0, :cond_5b

    .line 219
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mWorkingTimeForNoa: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SemWifiP2pGoPowerSave"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sput-wide v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    move-wide v2, p0

    goto :goto_77

    .line 209
    :cond_3b
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    cmp-long p0, p0, v2

    if-eqz p0, :cond_52

    .line 210
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    sub-long/2addr v4, v6

    sget v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr p0, v4

    sput-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 214
    :cond_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 215
    sput p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    goto :goto_77

    .line 200
    :cond_5b
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    cmp-long p0, p0, v2

    if-eqz p0, :cond_77

    .line 201
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    sub-long/2addr v4, v6

    sget p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    int-to-long v6, p2

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr p0, v4

    sput-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 204
    sput-wide v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    const/4 p0, 0x0

    .line 205
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    :cond_77
    :goto_77
    return-wide v2
.end method

.method private getNoaDuration(Ljava/util/regex/Matcher;)I
    .registers 2

    const/4 p0, 0x2

    .line 254
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getNoaNumber(Ljava/util/regex/Matcher;)I
    .registers 2

    const/4 p0, 0x1

    .line 258
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getP2pGoPowerSaveEventMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 2

    const-string p0, "P2P_GOPS_EVENT method=NOA([0-4])OPS[0-9]P[0-4C], noa_dur=([0-9]+),.*"

    .line 245
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 246
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p0, 0x0

    :cond_11
    return-object p0
.end method

.method private handleScreenState(Z)V
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pGoPowerSave"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1b

    const-string p1, "lcdon"

    goto :goto_1d

    :cond_1b
    const-string p1, "lcdoff"

    .line 271
    :goto_1d
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void
.end method

.method private setP2pNoticeOfAbsence(Ljava/lang/String;I)V
    .registers 4

    .line 262
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->setP2pNoa(Ljava/lang/String;ZI)Z

    return-void
.end method

.method private setProp(Ljava/lang/String;)V
    .registers 10

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "lcdon"

    const-string v3, "lcdoff"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_13a

    goto/16 :goto_7e

    :sswitch_11
    const-string v0, "closeInvitationDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x5

    goto/16 :goto_7f

    :sswitch_1c
    const-string v0, "apstadis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x7

    goto :goto_7f

    :sswitch_26
    const-string v0, "apstacon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x6

    goto :goto_7f

    :sswitch_30
    const-string v0, "siopLevCha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    move p1, v1

    goto :goto_7f

    :sswitch_3a
    const-string v0, "openInvitationDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x4

    goto :goto_7f

    :sswitch_44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    move p1, v5

    goto :goto_7f

    :sswitch_4c
    const-string v0, "wfdSta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/16 p1, 0x9

    goto :goto_7f

    :sswitch_57
    const-string v0, "smswon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x2

    goto :goto_7f

    :sswitch_61
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    move p1, v4

    goto :goto_7f

    :sswitch_69
    const-string v0, "groupexit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/16 p1, 0xa

    goto :goto_7f

    :sswitch_74
    const-string v0, "smswoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    const/4 p1, 0x3

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 p1, -0x1

    :goto_7f
    const-string v0, "wlan.p2p.wfdsta"

    const-string v6, "wlan.p2p.numclient"

    const-string v7, "wlan.p2p.chkintent"

    packed-switch p1, :pswitch_data_168

    .line 179
    sput v5, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 180
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sput v5, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "disconnected"

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 186
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_134

    goto/16 :goto_135

    .line 175
    :pswitch_ab
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_138

    .line 172
    :pswitch_b2
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wlan.p2p.temp"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_138

    .line 166
    :pswitch_bf
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    if-lez p0, :cond_c6

    sub-int/2addr p0, v4

    .line 167
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 169
    :cond_c6
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 160
    :pswitch_d0
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    if-ltz p0, :cond_d7

    add-int/2addr p0, v4

    .line 161
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 163
    :cond_d7
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 156
    :pswitch_e1
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    and-int/lit8 p0, p0, -0x21

    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 152
    :pswitch_ef
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    or-int/lit8 p0, p0, 0x20

    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 153
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 148
    :pswitch_fd
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    and-int/lit8 p0, p0, -0x11

    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 149
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 144
    :pswitch_10b
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    or-int/lit8 p0, p0, 0x10

    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 145
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 140
    :pswitch_119
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    and-int/lit8 p0, p0, -0x9

    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    .line 136
    :pswitch_127
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    or-int/2addr p0, v1

    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_138

    :cond_134
    move-object v2, v3

    .line 187
    :goto_135
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    :goto_138
    return-void

    nop

    :sswitch_data_13a
    .sparse-switch
        -0x7c06d18f -> :sswitch_74
        -0x585ca7e3 -> :sswitch_69
        -0x4212637e -> :sswitch_61
        -0x358c9b63 -> :sswitch_57
        -0x2f233595 -> :sswitch_4c
        0x620706c -> :sswitch_44
        0x272920ab -> :sswitch_3a
        0x43e1fad6 -> :sswitch_30
        0x4bd97c51 -> :sswitch_26
        0x4bd97f5d -> :sswitch_1c
        0x6bc1bc59 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_127
        :pswitch_119
        :pswitch_10b
        :pswitch_fd
        :pswitch_ef
        :pswitch_e1
        :pswitch_d0
        :pswitch_bf
        :pswitch_b2
        :pswitch_ab
    .end packed-switch
.end method

.method private unsetP2pNoticeOfAbsence(Ljava/lang/String;I)V
    .registers 4

    .line 266
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->setP2pNoa(Ljava/lang/String;ZI)Z

    return-void
.end method


# virtual methods
.method public handleEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getP2pGoPowerSaveEventMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 234
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getNoaNumber(Ljava/util/regex/Matcher;)I

    move-result v0

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getNoaDuration(Ljava/util/regex/Matcher;)I

    move-result p1

    .line 236
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->checkTimeNoa(II)J

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 238
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setP2pNoticeOfAbsence(Ljava/lang/String;I)V

    return-void

    .line 241
    :cond_19
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->unsetP2pNoticeOfAbsence(Ljava/lang/String;I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_f2

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_f2

    .line 85
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GopsReceiver : received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pGoPowerSave"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string p1, "smartswitch_transfer"

    .line 89
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "smswoff"

    if-nez v0, :cond_3f

    const-string p1, "smartswitch_transfer is not set."

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void

    :cond_3f
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartswitch_transfer = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_60

    const-string p1, "smswon"

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_60
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    goto/16 :goto_f2

    :cond_65
    const-string v0, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 p1, -0x3

    .line 103
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    const-string v0, "siop_level_broadcast"

    .line 104
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "siopLevCha"

    if-nez v2, :cond_83

    const-string p1, "siop_level was set to the default value."

    .line 105
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_83
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "siop_level = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    goto :goto_f2

    :cond_a3
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f2

    .line 113
    const-class p1, Landroid/hardware/display/WifiDisplayStatus;

    const-string v0, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/WifiDisplayStatus;

    const-string p2, "disconnected"

    .line 115
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    const-string p2, "wfdSta"

    if-nez p1, :cond_c6

    const-string p1, "chkWfdStatus was set to the default value."

    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void

    .line 122
    :cond_c6
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d2

    const-string p1, "connected"

    .line 124
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    goto :goto_d9

    :cond_d2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d9

    const-string p1, "connecting"

    .line 126
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 128
    :cond_d9
    :goto_d9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chkWfdStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    return-void
.end method

.method public registerListener()V
    .registers 3

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->handleScreenState(Z)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    return-void
.end method

.method public setApStaConnected()V
    .registers 2

    const-string v0, "apstacon"

    .line 283
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void
.end method

.method public setApStaDisconnected()V
    .registers 2

    const-string v0, "apstadis"

    .line 279
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupRemoved()V
    .registers 2

    const-string v0, "groupexit"

    .line 275
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    return-void
.end method
