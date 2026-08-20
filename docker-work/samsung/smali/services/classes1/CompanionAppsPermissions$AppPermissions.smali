.class public final LCompanionAppsPermissions$AppPermissions;
.super Ljava/lang/Object;
.source "CompanionAppsPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCompanionAppsPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppPermissions"
.end annotation


# static fields
.field public static final CERTIFICATES:J = 0x10c00000002L

.field public static final PACKAGE_NAME:J = 0x10900000001L

.field public static final PERMISSION:J = 0x20900000003L


# instance fields
.field public final synthetic this$0:LCompanionAppsPermissions;


# direct methods
.method public constructor <init>(LCompanionAppsPermissions;)V
    .registers 2

    .line 9
    iput-object p1, p0, LCompanionAppsPermissions$AppPermissions;->this$0:LCompanionAppsPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
