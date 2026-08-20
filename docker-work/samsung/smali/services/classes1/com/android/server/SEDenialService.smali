.class public Lcom/android/server/SEDenialService;
.super Landroid/os/ISEDenialService$Stub;
.source "SEDenialService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEDenialService$AuditFileObserver;
    }
.end annotation


# static fields
.field public static final AUDIT_PATH:Ljava/lang/String; = "/data/misc/audit/"

.field public static final DENIAL_LOG_FILE:Ljava/lang/String; = "DENIAL_LOG_FILE"

.field public static final DENIAL_NOTIFICATION:Ljava/lang/String; = "samsung.intent.action.knox.DENIAL_NOTIFICATION"

.field public static final SECURITY_LOG_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field public static final SELINUX_DENIAL:Ljava/lang/String; = "audit.ondenial"

.field public static final TAG:Ljava/lang/String; = "SecurityLogAgent:SEDenialService"


# instance fields
.field public auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/SEDenialService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Landroid/os/ISEDenialService$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;

    const-string p1, "SecurityLogAgent:SEDenialService"

    const-string v0, "Started FileObserver"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p1, Lcom/android/server/SEDenialService$AuditFileObserver;

    const-string v0, "/data/misc/audit/"

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/SEDenialService$AuditFileObserver;-><init>(Lcom/android/server/SEDenialService;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/SEDenialService;->auditObserver:Lcom/android/server/SEDenialService$AuditFileObserver;

    .line 52
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method
