.class public Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
.super Ljava/lang/Object;
.source "DefaultAppFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;,
        Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mDefaultAppChangedReceiver:Landroid/content/BroadcastReceiver;

.field public mDefaultAppChangedReceiverRegistered:Z

.field public mDefaultDialerPackage:Ljava/lang/String;

.field public mDefaultHomePackage:Ljava/lang/String;

.field public mDefaultIMEList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultSmsPackage:Ljava/lang/String;

.field public mInputMethodObserver:Landroid/database/ContentObserver;

.field public mInputMethodObserverRegistered:Z

.field public mSecureFolderEnabled:Z

.field public mSecureFolderUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureFolderEnabled(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureFolderUserId(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultDialerPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultSmsPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultIMEPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDefaultHomePackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->setDefaultHomePackage()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 36
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 37
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    .line 39
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
    .registers 1

    .line 49
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->unregisterDefaultIMEContentObserver()V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->unregisterDefaultAppChangedReceiver()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 95
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const/16 p4, 0xb

    if-eqz p3, :cond_2d

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    if-ne p2, p3, :cond_2d

    if-eqz p1, :cond_17

    .line 96
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    return p4

    :cond_17
    if-eqz p1, :cond_22

    .line 101
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    return p4

    :cond_22
    if-eqz p1, :cond_2d

    .line 105
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    return p4

    .line 110
    :cond_2d
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz p0, :cond_44

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_44

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return p4

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getDefaultDialerPackage()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    return-void
.end method

.method public getDefaultHomePackage()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getDefaultIMEPackage(I)V
    .registers 6

    if-gez p1, :cond_19

    .line 139
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultIMEPackage called with invalid userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    .line 143
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    const-string v2, "/"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3e

    .line 150
    aget-object v0, v2, v1

    :cond_3e
    if-eqz v0, :cond_70

    .line 154
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_70

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_5a

    .line 158
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69

    .line 159
    :cond_5a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 160
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_69
    :goto_69
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    :cond_70
    return-void
.end method

.method public final getDefaultSmsPackage()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 125
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->setContext(Landroid/content/Context;)V

    .line 65
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 66
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultDialerPackage()V

    .line 67
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultSmsPackage()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->setDefaultHomePackage()V

    .line 71
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_3d

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I

    if-nez p1, :cond_3a

    const/16 v1, 0x96

    if-lt v0, v1, :cond_3a

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_3a

    .line 76
    iput-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    goto :goto_3d

    :cond_3a
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    .line 83
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->registerDefaultIMEContentObserver()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->registerDefaultAppChangedReceiver(I)V

    return-void
.end method

.method public registerDefaultAppChangedReceiver(I)V
    .registers 9

    .line 202
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 205
    :cond_5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 206
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 207
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 208
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver-IA;)V

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 211
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    return-void
.end method

.method public final registerDefaultIMEContentObserver()V
    .registers 6

    .line 168
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    if-nez v0, :cond_2b

    .line 169
    new-instance v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Landroid/database/ContentObserver;

    .line 184
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 184
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    :cond_2b
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setDefaultHomePackage()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 130
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    return-void
.end method

.method public unregisterDefaultAppChangedReceiver()V
    .registers 3

    .line 218
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 222
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_1a

    .line 226
    :catch_13
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterDefaultAppChangedReceiver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method public final unregisterDefaultIMEContentObserver()V
    .registers 3

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    if-eqz v0, :cond_1a

    .line 193
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1a

    .line 197
    :catch_13
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterDefaultIMEContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_1a
    return-void
.end method
