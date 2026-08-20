.class public Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreStatus"
.end annotation


# static fields
.field public static final LOCKED:I = 0x2

.field public static final UNINITIALIZED:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final UNLOCKED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
