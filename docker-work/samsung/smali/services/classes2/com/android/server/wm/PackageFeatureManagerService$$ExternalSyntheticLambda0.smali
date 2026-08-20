.class public final synthetic Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corescpm/ScpmController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/PackageFeatureManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corescpm/ScpmController;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/corescpm/ScpmController;->getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method
