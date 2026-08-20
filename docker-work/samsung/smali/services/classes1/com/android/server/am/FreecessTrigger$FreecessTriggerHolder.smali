.class public Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;
.super Ljava/lang/Object;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreecessTriggerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessTrigger;
    .registers 1

    sget-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/android/server/am/FreecessTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger;-><init>(Lcom/android/server/am/FreecessTrigger-IA;)V

    sput-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
