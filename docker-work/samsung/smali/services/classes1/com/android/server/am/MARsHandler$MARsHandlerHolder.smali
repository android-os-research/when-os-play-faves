.class public Lcom/android/server/am/MARsHandler$MARsHandlerHolder;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MARsHandlerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/MARsHandler;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsHandler;
    .registers 1

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/android/server/am/MARsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsHandler;-><init>(Lcom/android/server/am/MARsHandler-IA;)V

    sput-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
