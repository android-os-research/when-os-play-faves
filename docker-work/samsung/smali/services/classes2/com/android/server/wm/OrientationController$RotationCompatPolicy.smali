.class public interface abstract annotation Lcom/android/server/wm/OrientationController$RotationCompatPolicy;
.super Ljava/lang/Object;
.source "OrientationController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OrientationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RotationCompatPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALWAYS_DISABLED:I = 0x0

.field public static final ALWAYS_ENABLED:I = 0x1

.field public static final AUTO:I = 0x2
