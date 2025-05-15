import 'package:camera_file/bloc/camera_bloc.dart';
import 'package:camera_file/bloc/camera_event.dart';
import 'package:camera_file/bloc/camera_state.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
    void initState() {
    super.initState();
    final bloc = context.read<CameraBloc>();
    if (bloc.state is! CameraReady) {
      bloc.add(InitializeCamera());
    }
  }


  Widget build(BuildContext context) {
    return const Placeholder();
  }
}