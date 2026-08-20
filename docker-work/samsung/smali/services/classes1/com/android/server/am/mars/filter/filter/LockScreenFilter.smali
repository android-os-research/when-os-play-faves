.class public Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
.super Ljava/lang/Object;
.source "LockScreenFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;
    }
.end annotation


# static fields
.field public static final CLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.clockface"

.field public static final LOCK_SETTING_CLOCK_TYPE:Ljava/lang/String; = "lock_clock_type"

.field public static final LOCK_SETTING_CLOCK_TYPE_URI:Ljava/lang/String; = "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

.field public static final LOCK_SETTING_SUB_CLOCK_TYPE:Ljava/lang/String; = "lock_sub_clock_type"

.field public static final LOCK_SETTING_SUB_CLOCK_TYPE_URI:Ljava/lang/String; = "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

.field public static final LOCK_SETTING_URI:Ljava/lang/String; = "content://com.samsung.android.app.clockpack.provider/lock_settings/"

.field public static final MAX_LOCKSCREEN_APP_COUNT:I = 0x5

.field public static TAG:Ljava/lang/String; = null

.field public static final TYPE_FACE_CLOCK_ANALOG:I = 0x11170

.field public static final TYPE_FACE_CLOCK_CUSTOM:I = 0x9c40

.field public static final TYPE_FACE_CLOCK_DIGITAL:I = 0xea60

.field public static final TYPE_FACE_CLOCK_LETTER:I = 0x13880


# instance fields
.field public isLockTypeClockFace:Z

.field public isLockTypeClockFaceSub:Z

.field public mContext:Landroid/content/Context;

.field public mKeyguardPkg:Ljava/lang/String;

.field public mKeyguardPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyguardPkgUid:I

.field public mLockClockFaceObserver:Landroid/database/ContentObserver;

.field public mLockClockFaceSubObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$mgetLockClockFace(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFace()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLockClockFaceSub(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFaceSub()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
    .registers 1

    .line 55
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 68
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->unregisterContentObserver()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 7

    .line 117
    iget-boolean p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFace:Z

    const/4 v0, 0x0

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFaceSub:Z

    if-eqz p2, :cond_a

    goto :goto_c

    :cond_a
    move p2, v0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p2, 0x1

    :goto_d
    const/16 v1, 0xe

    if-eqz p2, :cond_1a

    const-string p2, "com.samsung.android.app.clockface"

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    return v1

    .line 121
    :cond_1a
    iget p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    if-ne p2, p3, :cond_29

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    if-eqz p2, :cond_29

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    return v1

    :cond_29
    const/16 p2, 0x12

    if-ne p4, p2, :cond_42

    .line 126
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_42

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    return v1

    :cond_42
    return v0
.end method

.method public final getLockClockFace()V
    .registers 9

    const/4 v0, 0x0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    .line 153
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_38

    if-eqz v1, :cond_2f

    .line 154
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_25

    goto :goto_30

    :catchall_25
    move-exception v2

    .line 152
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_38

    :cond_2f
    move v2, v0

    :goto_30
    if-eqz v1, :cond_3d

    .line 158
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3d

    :catch_36
    move-exception v1

    goto :goto_3a

    :catch_38
    move-exception v1

    move v2, v0

    .line 159
    :goto_3a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    :goto_3d
    const v1, 0x9c40

    if-lt v2, v1, :cond_48

    const v1, 0x13880

    if-gt v2, v1, :cond_48

    const/4 v0, 0x1

    .line 161
    :cond_48
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFace:Z

    return-void
.end method

.method public final getLockClockFaceSub()V
    .registers 9

    const/4 v0, 0x0

    .line 167
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

    .line 168
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_38

    if-eqz v1, :cond_2f

    .line 169
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_25

    goto :goto_30

    :catchall_25
    move-exception v2

    .line 167
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_38

    :cond_2f
    move v2, v0

    :goto_30
    if-eqz v1, :cond_3d

    .line 173
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3d

    :catch_36
    move-exception v1

    goto :goto_3a

    :catch_38
    move-exception v1

    move v2, v0

    .line 174
    :goto_3a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    :goto_3d
    const v1, 0x9c40

    if-lt v2, v1, :cond_48

    const v1, 0x13880

    if-gt v2, v1, :cond_48

    const/4 v0, 0x1

    .line 176
    :cond_48
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFaceSub:Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->registerContentObserver()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFace()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFaceSub()V

    return-void
.end method

.method public final registerContentObserver()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4c

    .line 73
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_14

    .line 74
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    .line 81
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_24

    .line 82
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$2;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    .line 90
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public setKeyguardInfo(Ljava/lang/String;I)V
    .registers 5

    .line 135
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    .line 136
    iput p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    if-eqz p1, :cond_38

    .line 139
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2f

    .line 142
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2f
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    return-void
.end method

.method public final unregisterContentObserver()V
    .registers 4

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2d

    .line 101
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    .line 105
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2d

    .line 106
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2d

    .line 111
    :catch_26
    sget-object p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method
