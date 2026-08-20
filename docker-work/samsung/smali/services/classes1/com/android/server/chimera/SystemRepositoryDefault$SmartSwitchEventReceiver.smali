.class public Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemRepositoryDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SystemRepositoryDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartSwitchEventReceiver"
.end annotation


# static fields
.field public static final ACTION_SMARTSWITCH_FINISHED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

.field public static final ACTION_SMARTSWITCH_ONGOING:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

.field public static final ACTION_SMARTSWITCH_STARTED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

.field public static final ACTION_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

.field public static final EXTRA_BOOLEAN_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "smartswitch_transfer"

.field public static final PERMISSION_SMARTSWITCH:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"


# instance fields
.field public mOnStart:Z

.field public mOnTransfer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 100
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.wssnps.permission.COM_WSSNPS"

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public isSmartSwitchWorking()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 114
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_76

    goto :goto_40

    :sswitch_15
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_40

    :cond_1e
    const/4 v0, 0x3

    goto :goto_40

    :sswitch_20
    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_40

    :cond_29
    const/4 v0, 0x2

    goto :goto_40

    :sswitch_2b
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_40

    :cond_34
    move v0, v2

    goto :goto_40

    :sswitch_36
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v3

    :goto_40
    packed-switch v0, :pswitch_data_88

    goto :goto_53

    .line 123
    :pswitch_44
    iput-boolean v3, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    goto :goto_53

    :pswitch_47
    const-string/jumbo p1, "smartswitch_transfer"

    .line 116
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    goto :goto_53

    .line 120
    :pswitch_51
    iput-boolean v2, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    .line 126
    :goto_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SmartSwitchEventReceiver() - mOnStart: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mOnTransfer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemRepositoryDefault"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_76
    .sparse-switch
        -0x59dc8c44 -> :sswitch_36
        -0x326d7bab -> :sswitch_2b
        -0x2b1b6001 -> :sswitch_20
        0x786c859 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_51
        :pswitch_51
        :pswitch_47
        :pswitch_44
    .end packed-switch
.end method
