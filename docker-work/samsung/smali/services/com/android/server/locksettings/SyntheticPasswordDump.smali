.class public Lcom/android/server/locksettings/SyntheticPasswordDump;
.super Ljava/lang/Object;
.source "SyntheticPasswordDump.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyntheticPasswordDump"

.field public static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordDump_SDP"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    const-string p0, "SyntheticPasswordDump_SDP"

    const-string p1, "Dump not supported for this device"

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
