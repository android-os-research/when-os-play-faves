.class public interface abstract annotation Lcom/android/server/wm/AppContinuityController$AppContinuityPolicy;
.super Ljava/lang/Object;
.source "AppContinuityController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AppContinuityPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final APPLIED:I = 0x1

.field public static final NOT_APPLIED:I = 0x2

.field public static final RESTRICTED:I
