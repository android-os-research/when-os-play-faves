.class public final Lcom/android/server/am/ActiveServices$ServiceLookupResult;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceLookupResult"
.end annotation


# instance fields
.field public final aliasComponent:Landroid/content/ComponentName;

.field public final permission:Ljava/lang/String;

.field public final record:Lcom/android/server/am/ServiceRecord;

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V
    .registers 4

    .line 3466
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3467
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 p1, 0x0

    .line 3468
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    .line 3469
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V
    .registers 3

    .line 3472
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3473
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 3474
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    .line 3475
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method
