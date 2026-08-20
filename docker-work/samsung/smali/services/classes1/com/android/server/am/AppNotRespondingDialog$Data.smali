.class public Lcom/android/server/am/AppNotRespondingDialog$Data;
.super Ljava/lang/Object;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public final aInfo:Landroid/content/pm/ApplicationInfo;

.field public final aboveSystem:Z

.field public final proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V
    .registers 4

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 254
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aInfo:Landroid/content/pm/ApplicationInfo;

    .line 255
    iput-boolean p3, p0, Lcom/android/server/am/AppNotRespondingDialog$Data;->aboveSystem:Z

    return-void
.end method
